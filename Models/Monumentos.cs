namespace TPBSAS.Models;
using System;

public class Monumento
{
     private int _IdMonumentos, _IdCategoria;
    private string _nombre, _foto, _barrio, _infoLugar;
    private DateTime _fechaFundacion;

    public Monumento(int IdMonumentos, string nombre, string foto, string barrio, DateTime fechaFundacion, string infoLugar, int IdCategoria)
    {
        _IdMonumentos = IdMonumentos;
        _nombre = nombre;
        _foto = foto;
        _barrio = barrio;
        _fechaFundacion = fechaFundacion;
        _infoLugar = infoLugar;
        _IdCategoria = IdCategoria;
    }

    public Monumento()
    {
        _IdMonumentos = 0;
        _nombre = "";
        _foto = "";
        _barrio = "";
        _fechaFundacion = new DateTime(10,10,10);
        _infoLugar = "";
        _IdCategoria = 0;
    }

    public int IdMonumento
    {
        get { return _IdMonumentos; }
        set { _IdMonumentos = value; }
    }

     public int IdCategoria
    {
        get { return _IdCategoria; }
        set { _IdCategoria = value; }
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