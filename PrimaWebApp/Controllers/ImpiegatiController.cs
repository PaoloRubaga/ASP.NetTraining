using Microsoft.AspNetCore.Mvc;
using PrimaWebApp.Controllers;
using PrimaWebApp.Models;
using PrimaWebAppMVC.Repo;
using System.Diagnostics;


namespace PrimaWebAppMVC.Controllers
{
    public class ImpiegatiController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        private  readonly ImpiegatoRepository _repository;

        //public ImpiegatiController(ILogger<HomeController> logger)
        //{
        //    _logger = logger;
        //}

        public ImpiegatiController(ImpiegatoRepository repository)
        {
            _repository = repository;
        }

        public IActionResult Index()
        {
            var impiegati = _repository.GetImpiegati();
            return View(impiegati);
        }

        public IActionResult Dettaglio()
        {
            return View(_repository.GetImpiegatoConFind(2));
        }

        public IActionResult Crea()
        {
            return View();
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
