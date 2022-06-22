using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamSSM.Models
{
    public class ListaPedidosModel
    {
        public int nId { get; set; }
        public int nInvoice { get; set; }
        public DateTime dFecha { get; set; }
        public string cName { get; set; }
        public decimal nTotal { get; set; }
        public string cNotes { get; set; }
        public decimal nCantidad { get; set; }

        public decimal nPrecio { get; set; }

        public string nDescripcion { get; set; }
        public int nProductId { get; set; }


        



    }
}