using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using LUXURY.DAL.DBcontexto;
using Microsoft.EntityFrameworkCore;
//using LUXURY.DAL.Interfaces;
//using LUXURY.DAL.Implementacion;
//using LUXURY.BLL.Interfaces;
//using LUXURY.BLL.Implementacion;
namespace LUXURY.IOC
{
    // Agrego la cadena de conexion al contexto de entity framework
    public static class Dependencia
    {
        public static void InyectarDependencia(this IServiceCollection services, IConfiguration Configuration)
        {
            services.AddDbContext<DbLuxuryWebVContext>(options =>
            {
                options.UseSqlServer(Configuration.GetConnectionString("CadenaSQL"));
            });
        }
    }
}
