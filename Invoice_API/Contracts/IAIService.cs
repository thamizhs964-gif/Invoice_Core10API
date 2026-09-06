using Invoice_API.Models.AI;

namespace Invoice_API.Contracts
{
    public interface IAIService
    {
        Task<AIAskResponse> AskAsync(AIAskRequest request);
    }
}
