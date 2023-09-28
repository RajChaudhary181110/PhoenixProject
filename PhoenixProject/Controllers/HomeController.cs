using PhoenixProject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace PhoenixProject.Controllers
{
    


    public class HomeController : Controller
    {
        StplEntities db = new StplEntities();

        
        public ActionResult Index()
        {
            if (Session["SessionObj"] == null)
            {

                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                //MessageBox.Show("Session Time Out, Plz! Login Again");
                return RedirectToAction("Login", "UserSL");
               // return View();
            }
            else
            {
                //>>>>>>>>>>>>>> For Multiple CheckBox Value Get <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                MainMobel CheckData = new MainMobel();
            CheckData.Position = db.Multicheckboxes.ToList<Multicheckbox>();


            //>>>>>>>>>>>>>> For Cascading  Value Get <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            //CheckData.CountryClsObj = db.CountryNames.ToList<CountryName>();

            List<CountryName> CountryList = db.CountryNames.ToList();

            ViewBag.CountryList = new SelectList(CountryList, "Country_Id", "Country_Name");


            return View(CheckData);
        }
        }
        public JsonResult GetStateList(int id)
        {

            List<StateName> StateLst = db.StateNames.Where(x => x.Country_Id == id).ToList();
            return Json(StateLst, JsonRequestBehavior.AllowGet);

        }

        [HttpPost]
        public ActionResult Index(MainMobel mdl)
        {
          
                HttpPostedFileBase file1 = Request.Files["Photo"];
            mdl.Photo = file1.FileName;
            file1.SaveAs(Server.MapPath("~/Content/PassportSizePhoto/" + file1.FileName));


            HttpPostedFileBase file2 = Request.Files["Resume"];
            mdl.Resume = file2.FileName;
            file2.SaveAs(Server.MapPath("~/Content/Resume/" + file2.FileName));


            Srm tbl = new Srm();

            tbl.First_Name = mdl.First_Name;
            tbl.Last_Name = mdl.Last_Name;
            tbl.Email_Address = mdl.Email_Address;
            tbl.Linkedin = mdl.Linkedin;

            var MoreData = mdl.Position.Where(x => x.CheckConfirm == true).ToList<Multicheckbox>();
            tbl.Designation = string.Join(",", MoreData.Select(x => x.Technology));
            //tbl.Designation = mdl.Designation;

            tbl.Salary_Expectation = mdl.Salary_Expectation;
            tbl.Joining_Date = mdl.Joining_Date;
            tbl.Mobile_Number = mdl.Mobile_Number;
            tbl.Date_Of_Birth = mdl.Date_Of_Birth;
            tbl.Qualification = mdl.Qualification;
            tbl.Passing_Year = mdl.Passing_Year;

            //tbl.Country = mdl.Country;
            //tbl.State = mdl.State;
            tbl.Country = mdl.Country_Id;
            tbl.State = mdl.State_Id;
            //tbl.Country = mdl.SelectList;
            //tbl.State = mdl.SelectList;

            tbl.Experience = mdl.Experience;
            tbl.Relocated = mdl.Relocated;
            tbl.Organization = mdl.Organization;
            tbl.Description = mdl.Description;

            tbl.Photo = mdl.Photo;
            //if (mdl.Photo == null)
            //{
            //    mdl.Photo = "pic5.jpg";
            //    HttpPostedFileBase file1 = Request.Files["Photo"];
            //    mdl.Photo = file1.FileName;
            //    file1.SaveAs(Server.MapPath("~/Content/PassportSizePhoto/" + file1.FileName));
            //    tbl.Photo = mdl.Photo;
            //}
            //else
            //{
            //    HttpPostedFileBase file1 = Request.Files["Photo"];
            //    mdl.Photo = file1.FileName;
            //    file1.SaveAs(Server.MapPath("~/Content/PassportSizePhoto/" + file1.FileName));
            //    tbl.Photo = mdl.Photo;
            //}


            tbl.Resume = mdl.Resume;

            //if (mdl.Resume != null)
            //{
            //    HttpPostedFileBase file2 = Request.Files["Resume"];
            //    mdl.Resume = file2.FileName;
            //    file2.SaveAs(Server.MapPath("~/Content/Resume/" + file2.FileName));
            //    tbl.Resume = mdl.Resume;
            //}
            //else
            //{
            //    mdl.Photo = "pic5.jpg";
            //    HttpPostedFileBase file2 = Request.Files["Resume"];
            //    mdl.Resume = file2.FileName;
            //    file2.SaveAs(Server.MapPath("~/Content/Resume/" + file2.FileName));
            //    tbl.Resume = mdl.Resume;
            //} 


            db.Srms.Add(tbl);
            db.SaveChanges();

            return RedirectToAction("Contact");
        }


        [Authorize]
        public ActionResult Display( SelectDataFinally_Result ptn)
        
        {
            if (Session["SessionObj"] == null)
            {
                //ModelState.AddModelError("", "Session Time Out, Plz! Login Again");
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                //MessageBox.Show("<script>alert('Session Time Out, Plz! Login Again')</script>");
                return RedirectToAction("Login", "UserSL");
            }
            else
            {
                //var list = db.Srms.ToList();

               
                //++++++++++++++++++++++++++++++++++++ Search Method  ++++++++++++++++++++++++++++++++++++++++++++++++++

                //if (ptn.option == "Email_Address")
                //{
                //    var backDTA=db.SelectDataFinally().Where(x => x.Email_Address == search).ToList();
                //    return View(backDTA);
                //}
                //else if (ptn.option == "Country_Name")
                //{
                //    var backDTA = db.SelectDataFinally().Where(x => x.Country_Name == search).ToList();
                //    return View(backDTA);
                //}
                //else if (ptn.option == "Mobile_Number")
                //{
                //    var backDTA = db.SelectDataFinally().Where(x => x.Mobile_Number == search).ToList();
                //    return View(backDTA);
                //}
                //else if (ptn.option == "First_Name")
                //{
                //    //var backDTA = db.SelectDataFinally().Where(x => x.First_Name == search).ToList();
                //    var backDTA = db.SelectDataFinally().Where(x => x.First_Name == search).ToList();
                //    return View(backDTA);
                //}

              
                //if(search!=null)
                //{
                //    //var list = db.SelectDataFinally().ToList();
                    //var list = db.Srms.Where(x => x.First_Name.StartsWith(search)).ToList();


                    //var list = db.SelectDataFinally().Where(x => x.First_Name.StartsWith(search)).ToList();
                    //if(list.Count==0)
                    //{
                    //    ViewBag.msg = "<h1 style='color: red'>Ooops !</h1> <b>No any Data Found</b>";
                    //    return View(list);
                    //}                   
                    //    return View(list);
                //}
                //else
                //{
                    //var list = db.SelectDataFinally().ToList();
                    //var list = db.Srms.ToList();

                    var list = db.SelectDataFinally().ToList();
                    return View(list);
                //}

        }
        }
        
        [Authorize]

        public ActionResult Details(int id)
        {
            
            if (Session["SessionObj"] == null)
            {
                //ModelState.AddModelError("", "Session Time Out, Plz! Login Again");
                //TempData["msg"] = "Session Time Out, Plz! Login Again";
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                return RedirectToAction("Login", "UserSL");
            }
            else
            {
                var val = db.Srms.Where(x => x.CustomerID == id).FirstOrDefault();

                //var rec = db.Srms.Where(x => x.CustomerID == id).SelectMany(x=>x.Date_Of_Birth);
                //var rec = db.Srms.Where(c => c.CustomerID == id).Select(r => new Srm { Date_Of_Birth = r.Date_Of_Birth }).ToList();
                // var rec = db.Srms.Select(lst => new MainMobel {Date_Of_Birth= lst.Date_Of_Birth }).ToList();

                return View(val);
            }
        }

        

        [Authorize]
        public ActionResult Delete(int id)
        {
            if (Session["SessionObj"] == null)
            {
                //ModelState.AddModelError("", "Session Time Out, Plz! Login Again");
                //TempData["msg"] = "Session Time Out, Plz! Login Again";
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                return RedirectToAction("Login", "UserSL");
            }
            else
            {
                var dlt = db.Srms.Where(x => x.CustomerID == id).SingleOrDefault();
                db.Srms.Remove(dlt);
                db.SaveChanges();
                return RedirectToAction("Display");
            }
        }

        //============88888888888============888888888888888==============8888888888888888==============================

        public ActionResult Edit(int id)
        {
            if (Session["SessionObj"] == null)
            {
                //ModelState.AddModelError("", "Session Time Out, Plz! Login Again");
                //TempData["msg"] = "Session Time Out, Plz! Login Again";
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                return RedirectToAction("Login", "UserSL");
            }
            else 
            { 

               Srm CheckData = new Srm();

               CheckData = db.Srms.Where(x => x.CustomerID == id).SingleOrDefault();

               CheckData.Position = db.Multicheckboxes.ToList<Multicheckbox>();



                List<CountryName> CountryList = db.CountryNames.ToList();
                ViewBag.CountryList = new SelectList(CountryList, "Country_Id", "Country_Name");

                return View(CheckData);

            } 
        }

        [Authorize]
        [HttpPost]
        public ActionResult Edit(Srm mdl, int id)
        {
           


                //HttpPostedFileBase file1 = Request.Files["Photo"];
                //mdl.Photo = file1.FileName;
                //file1.SaveAs(Server.MapPath("~/Content/PassportSizePhoto/" + file1.FileName));


                //HttpPostedFileBase file2 = Request.Files["Resume"];
                //mdl.Resume = file2.FileName;
                //file2.SaveAs(Server.MapPath("~/Content/Resume/" + file2.FileName));



                Srm tbl = db.Srms.Where(x => x.CustomerID == id).SingleOrDefault();
                //Srm tbl = new Srm();
                tbl.First_Name = mdl.First_Name;
                tbl.Last_Name = mdl.Last_Name;
                tbl.Email_Address = mdl.Email_Address;
                tbl.Linkedin = mdl.Linkedin;


                var MoreData = mdl.Position.Where(x => x.CheckConfirm == true).ToList<Multicheckbox>();
                tbl.Designation = string.Join(",", MoreData.Select(x => x.Technology));


                tbl.Salary_Expectation = mdl.Salary_Expectation;
                tbl.Joining_Date = mdl.Joining_Date;
                tbl.Mobile_Number = mdl.Mobile_Number;
                tbl.Date_Of_Birth = mdl.Date_Of_Birth;
                tbl.Qualification = mdl.Qualification;
                tbl.Passing_Year = mdl.Passing_Year;
                tbl.Country = mdl.Country_Name;
                tbl.State = mdl.State_Name;
                tbl.Experience = mdl.Experience;
                tbl.Relocated = mdl.Relocated;
                tbl.Organization = mdl.Organization;
                tbl.Description = mdl.Description;
                tbl.Photo = mdl.Photo;
                tbl.Resume = mdl.Resume;

                db.SaveChanges();

                return RedirectToAction("Display");
            
        }

        public ActionResult About()
        {
            if (Session["SessionObj"] == null)
            {
              
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                return RedirectToAction("Login", "UserSL");
            }
           else
            {
                return View();
            }

            
        }

        public ActionResult Contact()
        {
            if (Session["SessionObj"] == null)
            {
                TempData["msg"] = "<script>alert('Session Time Out, Plz! Login Again')</script>";
                return RedirectToAction("Login", "UserSL");
            }
            else
            {
                return View();
            }
        }
    }
}