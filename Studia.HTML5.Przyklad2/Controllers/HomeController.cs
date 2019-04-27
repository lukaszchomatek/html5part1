using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Zaliczenie.Lib;

namespace Studia.HTML5.Przyklad2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult AddStudent(Student student)
        {
            Data.Students.Add(student);
            return View("DataSample");
        }

        public ActionResult DataSample()
        {
            ViewBag.Message = "Dane i Razor";

            return View();
        }
    }
}