using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;
using System.ComponentModel.DataAnnotations;


namespace Legalex.Web.ViewModels
{
    public class OrderViewModel
    {
        [Required]
        public ClientType ClientType { get; set; }
        [Required]
        public Service Service { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Contact { get; set; }
        [Required]
        public string Description { get; set; }
    }
}
