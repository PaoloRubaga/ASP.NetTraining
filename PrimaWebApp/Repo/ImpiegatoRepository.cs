using Dapper;
using PrimaWebAppMVC.Models;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Data;


namespace PrimaWebAppMVC.Repo
{
    public class ImpiegatoRepository
    {
        private readonly string _connectionString;

        public ImpiegatoRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public List<Impiegato> GetImpiegati()
        {
            using IDbConnection db = new SqlConnection(_connectionString);
            string sql = "SELECT Id, Cognome, Email, Livello FROM Impiegati";
            return db.Query<Impiegato>(sql).ToList();
        }

        public Impiegato GetImpiegato(int id)
        {
            using IDbConnection db = new SqlConnection(_connectionString);
            string sql = "SELECT * FROM Impiegati WHERE ID = " + id;
            return db.Query<Impiegato>(sql).First();
        }

        public Impiegato GetImpiegatoConFind(int? id)
        {
            return GetImpiegati().Find(x => x.Id == id);
        }
    }
}
