using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Invoice.BAL.Services;
using Invoice.DAL.Contracts;
using Invoice.Data.Entities;
using Invoice.DTOs;
using Moq;
using Xunit;

namespace Invoice.BAl.Test
{
    public class MasterCountServiceTests
    {
        private readonly Mock<ICustomerRepository> _customersMock;
        private readonly Mock<IItemmasterRepository> _itemsMock;
        private readonly Mock<IUsersRepository> _usersMock;
        private readonly Mock<ICategoryRepository> _categoriesMock;
        private readonly Mock<IVendorRepository> _vendorsMock;
        private readonly MasterCountService _service;

        public MasterCountServiceTests()
        {
            _customersMock = new Mock<ICustomerRepository>();
            _itemsMock = new Mock<IItemmasterRepository>();
            _usersMock = new Mock<IUsersRepository>();
            _categoriesMock = new Mock<ICategoryRepository>();
            _vendorsMock = new Mock<IVendorRepository>();

            _service = new MasterCountService(
                _customersMock.Object,
                _itemsMock.Object,
                _usersMock.Object,
                _categoriesMock.Object,
                _vendorsMock.Object);
        }

        [Fact]
        public async Task GetCategoryNamesAsync_ReturnsDistinctSortedTrimmed()
        {
            var categories = new List<CategoryEntity>
            {
                new CategoryEntity { Name = " Rice " },
                new CategoryEntity { Name = "rice" },
                new CategoryEntity { Name = " Vegitables" },
                new CategoryEntity { Name = null }
            };

            _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(categories);

            var result = await _service.GetCategoryNamesAsync();

            Assert.Equal(2, result.Count);
            Assert.Equal("Rice", result[0]);
            Assert.Equal("Vegitables", result[1]);
        }

        [Fact]
        public async Task GetCityNamesAsync_IgnoresDeletedAndEmpty_ReturnsSorted()
        {
            var customers = new List<CustomerEntity>
            {
                new CustomerEntity { City = "Chennai", IsDeleted = false },
                new CustomerEntity { City = " chennai ", IsDeleted = false },
                new CustomerEntity { City = "Madurai", IsDeleted = false },
                new CustomerEntity { City = "", IsDeleted = false },
                new CustomerEntity { City = "Salem", IsDeleted = true }
            };

            _customersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(customers);

            var result = await _service.GetCityNamesAsync();

            Assert.Equal(2, result.Count);
            Assert.Equal("Chennai", result[0]);
            Assert.Equal("Madurai", result[1]);
        }

        [Fact]
        public async Task CountCategoriesAsync_FiltersByIsActive()
        {
            var categories = new List<CategoryEntity>
            {
                new CategoryEntity { IsActive = true },
                new CategoryEntity { IsActive = false },
                new CategoryEntity { IsActive = true }
            };

            _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(categories);

            var all = await _service.CountCategoriesAsync(null);
            var active = await _service.CountCategoriesAsync(true);
            var inactive = await _service.CountCategoriesAsync(false);

            Assert.Equal(3, all);
            Assert.Equal(2, active);
            Assert.Equal(1, inactive);
        }

        [Fact]
        public async Task CountItemsInCategoryAsync_ReturnsTotal_WhenCategoryFound()
        {
            var categories = new List<CategoryEntity>
            {
                new CategoryEntity { Id = 5, Name = "Rice" }
            };

            _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(categories);

            _itemsMock
                .Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
                .ReturnsAsync(new PagedResultDto<ItemmasterEntity> { TotalRecords = 7 });

            var result = await _service.CountItemsInCategoryAsync("  rice  ", null);

            Assert.Equal(7, result);
        }

        [Fact]
        public async Task CountItemsInCategoryAsync_ReturnsNull_WhenCategoryNotFound()
        {
            _categoriesMock.Setup(x => x.GetAllAsync()).ReturnsAsync(new List<CategoryEntity>());

            var result = await _service.CountItemsInCategoryAsync("doesnotexist", null);

            Assert.Null(result);
        }

        [Fact]
        public async Task CountItemsAsync_UsesRepositoryPagedResult()
        {
            _itemsMock
                .Setup(x => x.GetAllPagedAsync(It.IsAny<ItemmasterFilterDto>()))
                .ReturnsAsync(new PagedResultDto<ItemmasterEntity> { TotalRecords = 3 });

            var result = await _service.CountItemsAsync(null, null);

            Assert.Equal(3, result);
        }

        [Fact]
        public async Task CountCustomersAsync_DelegatesToRepository()
        {
            _customersMock.Setup(x => x.GetCustomerCountAsync(true)).ReturnsAsync(12);

            var result = await _service.CountCustomersAsync(true);

            Assert.Equal(12, result);
        }

        [Fact]
        public async Task CountCustomersByCityAsync_CountsMatchingCity_CaseInsensitive()
        {
            var customers = new List<CustomerEntity>
            {
                new CustomerEntity { City = "Chennai", IsDeleted = false },
                new CustomerEntity { City = " chennai ", IsDeleted = false },
                new CustomerEntity { City = "Madurai", IsDeleted = false }
            };

            _customersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(customers);

            var count = await _service.CountCustomersByCityAsync("CHENNAI", null);

            Assert.Equal(2, count);
        }

        [Fact]
        public async Task CountCustomersGroupedByCityAsync_GroupsAndCounts()
        {
            var customers = new List<CustomerEntity>
            {
                new CustomerEntity { City = "Chennai", IsDeleted = false },
                new CustomerEntity { City = "chennai", IsDeleted = false },
                new CustomerEntity { City = "Madurai", IsDeleted = false },
                new CustomerEntity { City = "", IsDeleted = false }
            };

            _customersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(customers);

            var result = await _service.CountCustomersGroupedByCityAsync(null);

            Assert.Equal(2, result.Count);
            var first = result.First();
            Assert.Equal("Chennai", first.City);
            Assert.Equal(2, first.Count);
        }

        [Fact]
        public async Task CountVendorsAsync_FiltersByIsActive()
        {
            var vendors = new List<VendorEntity>
            {
                new VendorEntity { IsActive = true },
                new VendorEntity { IsActive = false }
            };

            _vendorsMock.Setup(x => x.GetAllAsync()).ReturnsAsync(vendors);

            var all = await _service.CountVendorsAsync(null);
            var active = await _service.CountVendorsAsync(true);

            Assert.Equal(2, all);
            Assert.Equal(1, active);
        }

        [Fact]
        public async Task CountUsersAsync_ExcludesDeletedAndFiltersByActive()
        {
            var users = new List<UsersEntity>
            {
                new UsersEntity { IsDeleted = false, IsActive = true },
                new UsersEntity { IsDeleted = false, IsActive = false },
                new UsersEntity { IsDeleted = true, IsActive = true }
            };

            _usersMock.Setup(x => x.GetAllAsync()).ReturnsAsync(users);

            var all = await _service.CountUsersAsync(null);
            var active = await _service.CountUsersAsync(true);

            Assert.Equal(2, all);
            Assert.Equal(1, active);
        }
    }
}
