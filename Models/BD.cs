namespace TPBSAS.Models;
using System.Collections.Generic;
using Dapper;
using System.Data.SqlClient;
using System;

public class BD
{

    private static string _connectionString = @"Server=LIAMKUNY\SQLEXPRESS;DataBase=TPBSAS;Trusted_Connection=True";

    public static List<Categoria> ObtenerCategorias()
    {
        List<Categoria> lista = new List<Categoria>();
        string sql = "SELECT * FROM Lugares";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {

            lista = db.Query<Categoria>(sql).ToList();
        }
        return lista;
    }

    public static List<Restaurante> ObtenerRestaurantes()
    {
        List<Restaurante> lista = new List<Restaurante>();
        string sql = "SELECT * FROM Restaurante";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {

            lista = db.Query<Restaurante>(sql).ToList();
        }
        return lista;
    }
        public static List<Monumento> ObtenerMonumentos()
    {
        List<Monumento> lista = new List<Monumento>();
        string sql = "SELECT * FROM Monumentos";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {

            lista = db.Query<Monumento>(sql).ToList();
        }
        return lista;
    }
        public static List<SitioTour> ObtenerSitioTour()
    {
        List<SitioTour> lista = new List<SitioTour>();
        string sql = "SELECT * FROM SitiosTour";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {

            lista = db.Query<SitioTour>(sql).ToList();
        }
        return lista;
    }
    public static void AgregarMonumento(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        string sql = "INSERT INTO Monumentos VALUES (@_Nombre, @_Foto,@_Barrio, @_FechaFundacion, @_InfoLugar,@_IdCategoria)";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new
            {
                
                _Nombre=Nombre,
                _Foto = Foto,
                _Barrio=Barrio,
                _FechaFundacion = FechaFundacion,
                _InfoLugar = InfoLugar,
                _IdCategoria=IdCategoria,
            });
        }
    }

    public static void AgregarSitiosTour(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        string sql = "INSERT INTO SitiosTour VALUES (@_Nombre, @_Foto,@_Barrio, @_FechaFundacion, @_InfoLugar,@_IdCategoria)";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new
            {

                _Nombre=Nombre,
                _Foto = Foto,
                _Barrio=Barrio,
                _FechaFundacion = FechaFundacion,
                _InfoLugar = InfoLugar,
                _IdCategoria=IdCategoria
            });
        }
    }

    public static void AgregarRestaurante(string Nombre, string Foto, string Barrio, DateTime FechaFundacion, string InfoLugar,int IdCategoria)
    {
        string sql = "INSERT INTO Restaurante VALUES (@_Nombre, @_Foto,@_Barrio, @_FechaFundacion, @_InfoLugar,@_IdCategoria)";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new
            {
                _Nombre=Nombre,
                _Foto = Foto,
                _Barrio=Barrio,
                _FechaFundacion = FechaFundacion,
                _InfoLugar = InfoLugar,
                _IdCategoria=IdCategoria
            });
        }
    }

    public static void EliminarMonumento(int IdMonumento)
    {
        string sql = "DELETE FROM Monumentos WHERE IdMonumento = @_IdMonumento";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new { _IdMonumento = IdMonumento});
        }
    }

    public static void EliminarSitioTour(int IdSitio)
    {
        string sql = "DELETE FROM SitiosTour WHERE IdSitio = @_IdSitio";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new { _IdSitio = IdSitio});
        }
    }

    public static void EliminarRestaurante(int IdRestaurante)
    {
        string sql = "DELETE FROM Restaurante WHERE IdRestaurante = @_IdRestaurante";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new { _IdRestaurante = IdRestaurante});
        }
    }

    public static List<Colectivos> ObtenerColectivos()
    {
        List<Colectivos> lista = new List<Colectivos>();
        string sql = "SELECT * FROM Colectivos";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {

            lista = db.Query<Colectivos>(sql).ToList();
        }
        return lista;
    }
    
    public static void AgregarColectivo(int NumeroColectivo, string Foto, string Recorrido, string InfoTransportes)
    {
        string sql = "INSERT INTO Colectivos VALUES ( @_NumeroColectivo, @_Foto,@_Recorrido, @_InfoTransportes)";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new
            {
                
                _NumeroColectivo = NumeroColectivo,
                _foto = Foto,              
                _Recorrido = Recorrido,
                _InfoTransportes = InfoTransportes
            });
        }
    }

    public static void EliminarColectivo(int IdTransportes)
    {
        string sql = "DELETE FROM Colectivos WHERE IdTransportes = @_IdTransportes";
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(sql, new { _IdTransportes = IdTransportes});
        }
    }



}