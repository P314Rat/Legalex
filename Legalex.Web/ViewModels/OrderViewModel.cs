using Legalex.DAL.Models.OrderAggregate;
using System.ComponentModel.DataAnnotations;


namespace Legalex.Web.ViewModels
{
    public class OrderViewModel
    {
        [Required]
        public Entity Type { get; set; }
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
