namespace Legalex.BLL.Services.TelegramService
{
    public interface ITelegramSender
    {
        public Task SendAsync(string message);
    }
}
