//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamSSM.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Invoices
    {
        public int InvoiceNumber { get; set; }
        public System.DateTime Date { get; set; }
        public int CustomerId { get; set; }
        public string Notes { get; set; }
    
        public virtual Customers Customers { get; set; }
    }
}