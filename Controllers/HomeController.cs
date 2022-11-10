using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TPBSAS.Models;


namespace TPBSAS.Controllers;

public class HomeController : Controller
{
    private IWebHostEnvironment Environment;
    private readonly ILogger<HomeController> _logger;

    public HomeController(IWebHostEnvironment environment)
    {
        Environment = environment;
    }

    public IActionResult Index()
    {

        return View("Index");
    }

    public IActionResult Lugares()
    {
        ViewBag.Categoria = BD.ObtenerCategorias();
        return View("PantallaLugares");
    }
    public IActionResult Restaurantes(int IdCategoria)
    {
        ViewBag.IdCategoria = IdCategoria;
        ViewBag.Restaurante = BD.ObtenerRestaurantes();
        return View("PantallaRestaurantes");
    }
    public IActionResult Monumentos(int IdCategoria)
    {
        ViewBag.IdCategoria = IdCategoria;
        ViewBag.Monumentos = BD.ObtenerMonumentos();
        return View("PantallaMonumentos");
    }
    public IActionResult SitiosTour(int IdCategoria)
    {
        ViewBag.IdCategoria = IdCategoria;
        ViewBag.SitiosTour = BD.ObtenerSitioTour();
        return View("PantallaSitiosTour");
    }
    public IActionResult Colectivos()
    {
        ViewBag.Colectivos = BD.ObtenerColectivos();
        return View("PantallaColectivos");
    }

    public IActionResult AgregarMonumento(int IdCategoria)
    {
        ViewBag.IdCategoria = IdCategoria;
        return View("AgregarMonumento");
    }
    public IActionResult AgregarSitiosTour(int IdCategoria)
    {
        
        ViewBag.IdCategoria = IdCategoria;
        return View("AgregarSitiosTour");
    }

    public IActionResult AgregarRestaurante(int IdCategoria)
    {
        ViewBag.IdCategoria = IdCategoria;
        return View("AgregarRestaurante");
    }
    public IActionResult AgregarColectivo()
    {
        
        return View("AgregarColectivo");
    }
    [HttpPost]
    public IActionResult GuardarColectivo(int NumeroColectivo, string Foto, string Recorrido, string InfoTransportes)
    {
        
        BD.AgregarColectivo(NumeroColectivo, Foto, Recorrido, InfoTransportes);
        return RedirectToAction("Colectivos");
    }

    [HttpPost]
    public IActionResult GuardarMonumento(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        BD.AgregarMonumento(Nombre, Foto, Barrio, FechaFundacion, InfoLugar,IdCategoria);
        return RedirectToAction("Monumentos");
    }
    [HttpPost]
    public IActionResult GuardarSitiosTour(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        
        BD.AgregarSitiosTour(Nombre, Foto, Barrio, FechaFundacion, InfoLugar,IdCategoria);
        return RedirectToAction("SitiosTour");
    }
    [HttpPost]
    public IActionResult GuardarRestaurante(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        
        BD.AgregarRestaurante(Nombre, Foto, Barrio, FechaFundacion, InfoLugar,IdCategoria);
        return RedirectToAction("Restaurantes");
    }


    public IActionResult EliminarColectivo(int IdTransportes)
    {
        BD.EliminarColectivo(IdTransportes);
        return RedirectToAction("Colectivos");
    }

    public IActionResult EliminarMonumento(int IdMonumento)
    {
        BD.EliminarMonumento(IdMonumento);
        return RedirectToAction("Monumentos");
    }

    public IActionResult EliminarRestaurante(int IdRestaurante)
    {
        
        BD.EliminarRestaurante(IdRestaurante);
        return RedirectToAction("Restaurantes");
    }
    public IActionResult EliminarSitioTour(int IdSitio)
    {
        BD.EliminarSitioTour(IdSitio);
        return RedirectToAction("SitiosTour");
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
