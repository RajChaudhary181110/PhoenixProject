using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PhoenixProject.Models
{
    public class LogInModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Mobile_Number { get; set; }
        public string Email_Address { get; set; }
       
        [Display(Name="Password")]
        public string password { get; set; }
        public string User_Identity { get; set; }
        [Display(Name ="Confirm Password")]
        public string ConfirmPassword { get; set; }
        public string Type { get; set; }
    }
}




