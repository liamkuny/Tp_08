namespace TPBSAS.Models;

public class Colectivos
{
    private int _idTransportes, _numeroColectivo;
    private string _foto, _recorrido, _infoTransporte;

    public Colectivos(int idTransportes, int numeroColectivo, string foto, string recorrido, string infoTransporte)
    {
        _idTransportes = idTransportes;
        _numeroColectivo = numeroColectivo;
        _foto = foto;
        _recorrido = recorrido;
        _infoTransporte = infoTransporte;
    }

    public Colectivos()
    {
        _idTransportes = 0;
        _numeroColectivo = 0;
        _foto = "";
        _recorrido= "";
        _infoTransporte = "";
    }
    public int IdTransportes
    {
        get { return _idTransportes; }
        set { _idTransportes = value; }
    }
    public int NumeroColectivo
    {
        get { return _numeroColectivo; }
        set { _numeroColectivo = value; }
    }
    public string Foto
    {
        get { return _foto; }
        set { _foto = value; }
    }

    public string Recorrido
    {
        get { return _recorrido; }
        set { _recorrido= value; }
    }
    public string InfoTransportes
    {
        get { return _infoTransporte; }
        set { _infoTransporte= value; }
    }

    
}