using System;
using System.Collections.Generic;

namespace LUXURY.Entity.Models;

public partial class TablaVape
{
    public int IdVape { get; set; }

    public string? UrlImagen { get; set; }

    public string? NombreImagen { get; set; }

    public int? IdProducto { get; set; }

    public string? NombreProducto { get; set; }

    public string? Marca { get; set; }

    public string? Modelo { get; set; }

    public string? Sabor { get; set; }

    public string? ContenidoNicotina { get; set; }

    public decimal? PrecioUnitario { get; set; }

    public int? Cantidad { get; set; }

    public virtual Producto? IdProductoNavigation { get; set; }
}
