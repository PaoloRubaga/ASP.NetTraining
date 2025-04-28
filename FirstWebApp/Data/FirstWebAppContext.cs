using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using FirstWebApp.Models;

namespace FirstWebApp.Data
{
    public class FirstWebAppContext : DbContext
    {
        public FirstWebAppContext (DbContextOptions<FirstWebAppContext> options)
            : base(options)
        {
        }

        public DbSet<FirstWebApp.Models.Movie> Movie { get; set; } = default!;
    }
}
