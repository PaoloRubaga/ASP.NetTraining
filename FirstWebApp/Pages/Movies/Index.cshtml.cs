using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using FirstWebApp.Data;
using FirstWebApp.Models;

namespace FirstWebApp.Pages.Movies
{
    public class IndexModel : PageModel
    {
        private readonly FirstWebApp.Data.FirstWebAppContext _context;

        public IndexModel(FirstWebApp.Data.FirstWebAppContext context)
        {
            _context = context;
        }

        public IList<Movie> Movie { get;set; } = default!;

        public async Task OnGetAsync()
        {
            Movie = await _context.Movie.ToListAsync();
        }
    }
}
