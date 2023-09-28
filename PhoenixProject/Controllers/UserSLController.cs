using PhoenixProject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
//using CaptchaMvc.HtmlHelpers;

namespace PhoenixProject.Controllers
{
    public class UserSLController : Controller
    {

        StplEntities db = new StplEntities();
        // GET: UserSL


        public ActionResult SignUp()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SignUp(LogInModel sngmdl)
        {

            //if(this.IsCaptchaValid(""))
            //{
            try
            {
                var pass = sngmdl.password;
                var cp = sngmdl.ConfirmPassword;

                if (pass == cp)
                {
                    LoginSingUp sngtbl = new LoginSingUp();
                    sngtbl.Name = sngmdl.Name;
                    sngtbl.Mobile_Number = sngmdl.Mobile_Number;
                    sngtbl.Email_Address = sngmdl.Email_Address;
                    sngtbl.password = sngmdl.password;
                    sngtbl.User_Identity = sngmdl.User_Identity;

                    if (sngmdl.Email_Address != null && sngmdl.password != null)
                    {
                        db.LoginSingUps.Add(sngtbl);
                        db.SaveChanges();
                        return View("Login");
                    }
                    else
                    {
                        ViewBag.SignUp_Procedure = "Plz! Complete the SignUp Procedure";
                        ModelState.AddModelError("", "Plz! Complete the SignUp Procedure");
                        return View("Login");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Plz! Enter Same Password");
                    //Response.Write("<script>alert('Plz! Enter Same Password')</script>");
                    //ViewBag.Message = "please complete";

                    return View();
                }
            }
            catch (DbEntityValidationException e)
            {
                Console.WriteLine(e);
                return View();
            }
        }
        //else
        //{
        //    ViewBag.Captcha = "Captcha is not Correct Try Again";

        //    return View("Login");

        //}





        //===-=-=-=-=-=-=-=-=-=-*****Forget Password*****=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=--=-=-=-=-=-==-=-=-=-

        //public ActionResult ForgetPassword()
        //{

        //    return View();
        //}
        //public ActionResult ForgetPasswordp(int id)
        //{

        // var check = db.LoginSingUps.Where(x => x.Id == id).SingleOrDefault();
        //  return View();
        //}
        //[HttpPost]
        //public ActionResult ForgetPasswordp(LogInModel pass,int id)
        //{
        //    LoginSingUp tbl = db.LoginSingUps.Where(x => x.Id == id).SingleOrDefault();
        //    tbl.password = pass.password;
        //    db.SaveChanges();
        //    return RedirectToAction("Login");
        //}


        public ActionResult Login()
        {
            //ViewBag.Message = TempData["msg"];
            return View();
        }
        [HttpPost]
        public ActionResult Login(LogInModel check)
        {
            try
            {

                if (check.password == check.ConfirmPassword)
                {
                    var valid = db.LoginSingUps.Where(q => q.Email_Address == check.Email_Address && q.password == check.password).SingleOrDefault();

                    if (valid != null)
                    {
                        //**************************** For Session ***********************************
                        Session["SessionObj"] = check.Email_Address;

                        if (Session["SessionObj"] != null)
                        {



                            var typ = db.LoginSingUps.Where(x => x.Email_Address == check.Email_Address && x.User_Identity == check.Type).SingleOrDefault();
                            if (typ != null && check.Type == "Admin")
                            {
                                //**************************** For Cookies ***********************************
                                FormsAuthentication.SetAuthCookie(check.Email_Address, false);
                                return RedirectToAction("Display", "Home");
                            }
                            else if (typ != null && check.Type == "User")
                            {
                                Session["UserLogin"] = check.Type;

                                Session["UserName"] = check.Email_Address;
                                //FormsAuthentication.SetAuthCookie(check.Email_Address, false);
                                return RedirectToAction("About", "Home");
                            }

                            //else if (typ != null && check.Type == "Employee")
                            //{
                            //    FormsAuthentication.SetAuthCookie(check.Email_Address, false);
                            //    return RedirectToAction("Contact", "Home");
                            //}

                            else
                            {
                                ModelState.AddModelError("", "Sorry! User Type Invalid ");
                                return View("Login");
                            }


                        }
                        else
                        {
                            ModelState.AddModelError("", "Session Time Out Plz! Try Again ");
                            return View();
                        }
                    }
                    else
                    {
                        ModelState.AddModelError("", "Sorry! Invalid User");
                        return View();
                    }

                }
                else
                {
                    ModelState.AddModelError("", " Password is Not Match");
                    return View();
                }


            }
            catch (DbEntityValidationException e)
            {
                Console.WriteLine(e);
                return View();
            }

        }

        public ActionResult LogOut()
        {

            ////**************************** For Cookies ***********************************
            FormsAuthentication.SignOut();
            Session["UserName"] = null;
            ////**************************** For Session ***********************************
            //Session.Abandon();

            return RedirectToAction("Login");
        }
    }
    
}