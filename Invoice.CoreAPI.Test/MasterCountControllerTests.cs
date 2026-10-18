using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Invoice.BAL.Contracts;
using Invoice.BAL.contracts;
using Invoice.CoreAPI.Controllers;
using Invoice.DTOs;
using Invoice.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Moq;
using Xunit;

namespace Invoice.CoreAPI.Test
{
    public class MasterCountControllerTests
    {
        private readonly Mock<IMasterCountService> _serviceMock;
        private readonly Mock<ILogger<MasterCountController>> _loggerMock;
        private readonly MasterCountController _controller;

        public MasterCountControllerTests()
        {
            _serviceMock = new Mock<IMasterCountService>();
            _loggerMock = new Mock<ILogger<MasterCountController>>();

            _controller = new MasterCountController(
                _serviceMock.Object,
                _loggerMock.Object);
        }

        [Fact]
        public async Task Customers_ReturnsOk_WhenServiceReturnsCount()
        {
            _serviceMock.Setup(x => x.CountCustomersAsync(true)).ReturnsAsync(5);

            var result = await _controller.Customers(true);

            var ok = Assert.IsType<OkObjectResult>(result);
            var response = Assert.IsType<ApiResponse<int>>(ok.Value);

            Assert.True(response.Success);
            Assert.Equal("Customer count retrieved successfully", response.Message);
            Assert.Equal(5, response.Data);

            _serviceMock.Verify(x => x.CountCustomersAsync(true), Times.Once);
        }

        [Fact]
        public async Task CustomersByCity_ReturnsOk_WhenServiceReturnsCounts()
        {
            var counts = new List<CityCountDto>
            {
                new CityCountDto("Chennai", 3),
                new CityCountDto("Madurai", 1)
            };

            _serviceMock.Setup(x => x.CountCustomersGroupedByCityAsync(null)).ReturnsAsync(counts);

            var result = await _controller.CustomersByCity(null);

            var ok = Assert.IsType<OkObjectResult>(result);
            var response = Assert.IsType<ApiResponse<IReadOnlyList<CityCountDto>>>(ok.Value);

            Assert.True(response.Success);
            Assert.Equal("Customer counts by city retrieved successfully", response.Message);
            Assert.Equal(2, response.Data.Count);

            _serviceMock.Verify(x => x.CountCustomersGroupedByCityAsync(null), Times.Once);
        }

        [Fact]
        public async Task Vendors_ReturnsOk_WhenServiceReturnsCount()
        {
            _serviceMock.Setup(x => x.CountVendorsAsync(false)).ReturnsAsync(2);

            var result = await _controller.Vendors(false);

            var ok = Assert.IsType<OkObjectResult>(result);
            var response = Assert.IsType<ApiResponse<int>>(ok.Value);

            Assert.True(response.Success);
            Assert.Equal("Vendor count retrieved successfully", response.Message);
            Assert.Equal(2, response.Data);

            _serviceMock.Verify(x => x.CountVendorsAsync(false), Times.Once);
        }

        [Fact]
        public async Task Categories_ReturnsOk_WhenServiceReturnsCount()
        {
            _serviceMock.Setup(x => x.CountCategoriesAsync(null)).ReturnsAsync(6);

            var result = await _controller.Categories(null);

            var ok = Assert.IsType<OkObjectResult>(result);
            var response = Assert.IsType<ApiResponse<int>>(ok.Value);

            Assert.True(response.Success);
            Assert.Equal("Category count retrieved successfully", response.Message);
            Assert.Equal(6, response.Data);

            _serviceMock.Verify(x => x.CountCategoriesAsync(null), Times.Once);
        }

        [Fact]
        public async Task Items_ReturnsOk_WhenServiceReturnsCount()
        {
            _serviceMock.Setup(x => x.CountItemsAsync(1, true)).ReturnsAsync(10);

            var result = await _controller.Items(1, true);

            var ok = Assert.IsType<OkObjectResult>(result);
            var response = Assert.IsType<ApiResponse<int>>(ok.Value);

            Assert.True(response.Success);
            Assert.Equal("Item count retrieved successfully", response.Message);
            Assert.Equal(10, response.Data);

            _serviceMock.Verify(x => x.CountItemsAsync(1, true), Times.Once);
        }

        [Fact]
        public async Task Customers_Returns500_WhenServiceThrowsException()
        {
            _serviceMock.Setup(x => x.CountCustomersAsync(null)).ThrowsAsync(new Exception("boom"));

            var result = await _controller.Customers(null);

            var objectResult = Assert.IsType<ObjectResult>(result);
            Assert.Equal(StatusCodes.Status500InternalServerError, objectResult.StatusCode);

            var response = Assert.IsType<ApiResponse<string>>(objectResult.Value);
            Assert.False(response.Success);
            Assert.Equal("Error retrieving customer count", response.Message);

            _serviceMock.Verify(x => x.CountCustomersAsync(null), Times.Once);
        }
    }
}
