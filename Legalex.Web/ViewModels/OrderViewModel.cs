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
        [EmailAddress]
        public string? Email { get; set; } = null;
        [Required]
        public string Name { get; set; }
        [Required]
        [Phone]
        public string Phone { get; set; }
        [Required]
        public string Description { get; set; }
    }
}
