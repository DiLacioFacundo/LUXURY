using System;
using System.Collections.Generic;

namespace LUXURY.Entity.Models;

public partial class TablaRopa
{
    public int IdRopa { get; set; }

    public string? UrlImagen { get; set; }

    public string? NombreImagen { get; set; }

    public int? IdProducto { get; set; }

    public string? NombreProducto { get; set; }

    public string? Marca { get; set; }

    public string? Talle { get; set; }

    public string? Color { get; set; }

    public decimal? PrecioUnitario { get; set; }

    public int? Cantidad { get; set; }

    public virtual Producto? IdProductoNavigation { get; set; }
}
