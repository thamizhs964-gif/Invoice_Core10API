namespace Invoice_API.Contracts
{
    public interface IMockAIProvider
    {
        Task<string> GetIntentAsync(string question);
    }
}
