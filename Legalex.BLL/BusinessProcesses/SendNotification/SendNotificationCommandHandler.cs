using Legalex.BLL.Services.TelegramService;
using Legalex.DAL.Models.OrderAggregate;
using MediatR;


namespace Legalex.BLL.BusinessProcesses.SendNotification
{
    public class SendNotificationCommandHandler : IRequestHandler<SendNotificationCommand>
    {
        private readonly ITelegramSender _sender;


        public SendNotificationCommandHandler(ITelegramSender sender)
        {
            _sender = sender;
        }

        public async Task Handle(SendNotificationCommand command, CancellationToken cancellationToken)
        {
            var service = string.Empty;

            switch (command.Service)
            {
                case Service.NonSelected:
                    service = "Не выбран";
                    break;
                case Service.Legal:
                    service = "Юридические услуги";
                    break;
                case Service.CrisisManagement:
                    service = "Антикризисное управление";
                    break;
                case Service.Mediation:
                    service = "Медиация";
                    break;
                case Service.HR:
                    service = "HR услуги";
                    break;
                case Service.HRSupport:
                    service = "Услуги кадрового специалиста";
                    break;
                case Service.OccupationalSafetyAndHealth:
                    service = "Охрана труда";
                    break;
                case Service.ProtectionOfPersonalInformation:
                    service = "Защита персональных данных";
                    break;
                case Service.Finance:
                    service = "Услуги экономиста";
                    break;
            }

            var type = command.Type == Entity.Legal ? "Юридическое лицо" : "Физическое лицо";

            try
            {
                await _sender.SendAsync(
                $"*Тип заявки:*  {type}\n\n" +
                $"*Тип услуги:*  {service}\n\n" +
                $"*Имя:*  {command.Name}\n\n" +
                $"*Контакт:*  " + $"{command.Contact}\n\n" +
                $"*Описание:*  {command.Description}");
            }
            catch
            {
                throw new Exception("Failed to send telegram notification");
            }
        }
    }
}
