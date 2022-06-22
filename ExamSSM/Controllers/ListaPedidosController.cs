using ExamSSM.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ExamSSM.Controllers
{
    public class ListaPedidosController : Controller
    {
        // GET: ListaPedidos
        public ActionResult Index()
        {
            try
            {
                List<ListaPedidosModel> list;
                using (Exam1SSMDBEntities db = new Exam1SSMDBEntities())
                {

                    list = (from c in db.Invoices
                            join x in db.Customers on c.CustomerId equals x.CustomerId
                            join y in db.InvoiceDetails on c.InvoiceNumber equals y.InvoiceNumber
                            group new { c, x, y } by new { c.InvoiceNumber, c.Date, x.Name } into grp
                            select new ListaPedidosModel
                            {
                                cName = grp.Key.Name,
                                nInvoice = grp.Key.InvoiceNumber,
                                dFecha = grp.Key.Date,
                                nTotal = grp.Sum(m => m.y.Quantity * m.y.UnitPrice)
                            }).ToList();                                                 
                }
                list.ForEach(x => x.nId= x.nId +list.IndexOf(x)+1);

                return View(list);
           
            }
            catch (Exception ex)
            {
                return Json(ex.Message, JsonRequestBehavior.AllowGet);
            }

        }
      

        [HttpPost]
        public JsonResult ObtenerDetalles(int id)
        {
            try
            {
                List<ListaPedidosModel> list;
                using (Exam1SSMDBEntities db = new Exam1SSMDBEntities())
                {

                    list = (from c in db.Invoices
                            join x in db.Customers on c.CustomerId equals x.CustomerId
                            where c.InvoiceNumber==id
                            group new { c, x} by new { c.InvoiceNumber, c.Date, x.Name,c.Notes } into grp
                            select new ListaPedidosModel
                            {
                                cName = grp.Key.Name,
                                nInvoice = grp.Key.InvoiceNumber,
                                dFecha = grp.Key.Date,
                                cNotes=grp.Key.Notes
                                
                            }).ToList();
                }
                return Json(list, JsonRequestBehavior.AllowGet);


            }
            catch (Exception ex)
            {
                return Json(ex.Message, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public JsonResult ObtenerDetalleProducto(int id)
        {
            try
            {
                List<ListaPedidosModel> list;
                using (Exam1SSMDBEntities db = new Exam1SSMDBEntities())
                {

                    list = (from c in db.Invoices
                            join y in db.InvoiceDetails on c.InvoiceNumber equals y.InvoiceNumber
                            join z in db.Products on y.ProductId equals z.ProductId
                            where c.InvoiceNumber == id
                            select new ListaPedidosModel
                            {
                                nProductId = z.ProductId,
                                nDescripcion = z.Description,
                                nCantidad = y.Quantity,
                                nPrecio = y.UnitPrice

                            }).ToList();
                }
                return Json(list, JsonRequestBehavior.AllowGet);


            }
            catch (Exception ex)
            {
                return Json(ex.Message, JsonRequestBehavior.AllowGet);
            }
        }


    }
}