using PhoenixProject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.Windows.Forms;

namespace PhoenixProject.Controllers
{
    public class ForgetPasswordController : Controller
    {
       

        StplEntities db = new StplEntities();

       // Random rdm = new Random();
       //public static var Auto_Generate_Code = rdm.Next(999999).ToString();


        // GET: ForgetPassword
        public ActionResult SaveFP()
        {
            return View();
        }
       [HttpPost]
        public ActionResult SaveFP(ForgetPassword_Cls mdl)
        {
              Session["ModelLList"] = mdl.Email;
            return RedirectToAction("Generate_OTP");
        }
        
        public  ActionResult Generate_OTP()
        {
            

            var EmailFind=Session["ModelLList"].ToString();

            var Permission = db.LoginSingUps.Where(x => x.Email_Address == EmailFind).FirstOrDefault();

            if (Permission != null)
            {
                //Generate_OTP Dta = new Generate_OTP();

                Random rdm = new Random();
                var Auto_Generate_Code = rdm.Next(999999).ToString();
                Session["A_G_C"] = Auto_Generate_Code;

                //Dta.BindData = Auto_Generate_Code;

                MailMessage message = new MailMessage("rc585708@gmail.com", EmailFind);

                message.Subject = "Your Verification Code";
                message.Body = "Please! do not share the One Time Password with any other person" +
                               " Your One Time Password (OTP) is :'" + Auto_Generate_Code + "'" +
                               " Your OTP Limits Only 60 second Valid until";
                message.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Timeout = 60000;

                NetworkCredential Network_CL = new NetworkCredential("rc585708@gmail.com", "qhppadmubzoqrkrg");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = Network_CL;

                try
                {
                    smtp.Send(message);
                    //MessageBox.Show("OTP Send to Your Register Email ");
                    Session["send"] = "<script>alert('OTP Send to Your Register Email ')</script>";
                    return View("OTP_Page");


                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return View();

                }
            }

            Session["Wrong_Email"] = "<span style='color: red; font-weight:bold; background-color:white;font-size:20px '>Invalid Email Plz! Enter Valid Email </span>";
            return RedirectToAction("Login", "UserSL");

        }
        public ActionResult OTP_Page()
        {
            

            return View();
        }

        [HttpPost]
        public ActionResult OTP_Page(OTP_Verify pto, ForgetPassword_Cls mdl)
        {
            var otp = Session["A_G_C"].ToString();
            var otp_Verify = pto.OTP;
            if (otp== otp_Verify)
            {
                //ForgetPassword_Tbl tbl = new ForgetPassword_Tbl();
                //tbl.Email = mdl.Email;
                //tbl.Mobile = mdl.Mobile;
                //tbl.Date_Time = DateTime.Now.ToString();
                //db.ForgetPassword_Tbl.Add(tbl);
                //db.SaveChanges();            
                return RedirectToAction("EditFP");

            }
            return View();
        }


        public ActionResult EditFP()
        {
            //var rec = db.LoginSingUps.Where(x => x.Email_Address == Email).SingleOrDefault();
            return View();
        }

        [HttpPost]
        public ActionResult EditFP(LoginSingUp mdl)
        {
            try
            {
                if (mdl.NewPassword==mdl.ConfirmPassword)
            {
                    var check = db.LoginSingUps.Where(x => x.Email_Address == mdl.Email_Address).FirstOrDefault();

                    if (check!=null)
                { 
                   LoginSingUp tbl = db.LoginSingUps.Where(x => x.Email_Address ==mdl.Email_Address).SingleOrDefault();               
                   tbl.password = mdl.NewPassword;
                   db.SaveChanges();
                    return RedirectToAction("Login", "UserSL");
                }
                else 
                {
                    ModelState.AddModelError("", "Plz! Fill the Correct Email");
                    return View();
                }
            }
           else
            {
                ModelState.AddModelError("", "Password is Not Same !");
                return View();
            }

            }
            catch (DbEntityValidationException e)
            {
                Console.WriteLine(e);
                return View();
            }


        }
    }
}