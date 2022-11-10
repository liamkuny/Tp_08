namespace TPBSAS.Models;
using System;

public class SitioTour
{
    private int _idSitio, _idCategoria;
    private string _nombre, _foto, _barrio, _infoLugar;
    private DateTime _fechaFundacion;
    
    public SitioTour(int idSitio, string nombre, string foto, string barrio, DateTime fechaFundacion, string infoLugar, int IdCategoria)
    {
        _idSitio = idSitio;
        _nombre = nombre;
        _foto = foto;
        _barrio = barrio;
        _fechaFundacion = fechaFundacion;
        _infoLugar = infoLugar;
        _idCategoria = IdCategoria;
    }

    public SitioTour()
    {
        _idSitio = 0;
        _nombre = "";
        _foto = "";
        _barrio = "";
        _fechaFundacion = new DateTime(10,10,10);
        _infoLugar = "";
        _idCategoria = 0;
    }

    public int IdSitio
    {
        get { return _idSitio; }
        set { _idSitio = value; }
    }

     public int IdCategoria
    {
        get { return _idCategoria; }
        set { _idCategoria = value; }
    }

    public string Nombre
    {
        get { return _nombre; }
        set { _nombre = value; }
    }

    public string Foto
    {
        get { return _foto; }
        set { _foto = value; }
    }

    public string Barrio
    {
        get { return _barrio; }
        set { _barrio = value; }
    }

    public string InfoLugar
    {
        get { return _infoLugar; }
        set { _infoLugar = value; }
    }

    public DateTime FechaFundacion
    {
        get { return _fechaFundacion; }
        set { _fechaFundacion = value; }
    }
}