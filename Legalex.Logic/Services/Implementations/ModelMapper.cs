using Legalex.Infrastructure.Domain;
using Legalex.Logic.DTO;

namespace Legalex.Logic.Services.Implementations
{
    public static class ModelMapper
    {
        public static Order MapToOrder(OrderDTO orderDTO)
        {
            var order = new Order()
            {
                Type = orderDTO.Type,
                Status = orderDTO.Status,
                ShortDescrption = orderDTO.ShortDescrption,
                Description = orderDTO.Description
            };

            return order;
        }
    }
}
