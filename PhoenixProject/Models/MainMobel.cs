using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PhoenixProject.Models
{
    public class MainMobel
    {
        public int CustomerID { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Email_Address { get; set; }
        public string Linkedin { get; set; }
        public string Designation { get; set; }
        public string Salary_Expectation { get; set; }
        public string Joining_Date { get; set; }
        public string Mobile_Number { get; set; }
        public string Date_Of_Birth { get; set; }
        public string Qualification { get; set; }
        public string Passing_Year { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public string Experience { get; set; }
        public string Relocated { get; set; }
        public string Organization { get; set; }
        public string Description { get; set; }
        public string Photo { get; set; }
        public string Resume { get; set; }

        public List<Srm> MainTable { get; set; }
        public List<Multicheckbox> Position { get; set; }


        public List<CountryName> CountryClsObj { get; set; }
        public string Country_Id { get; set; }
        public string Country_Name { get; set; }
      

        //public List<StateName> StateClsObj { get; set; }
        public string State_Id { get; set; }
        public string State_Name { get; set; }
        //public int Country_Id { get; set; } 

        
    }
}