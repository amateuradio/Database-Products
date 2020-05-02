using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Products
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewProduct_Click(object sender, EventArgs e)
        {
            emodelPDContainer model = new emodelPDContainer();
            Product product = new Product();
            product.Id = Guid.NewGuid();
            product.Number = Convert.ToInt32(Number.Text);
            product.Serie = Serie.Text;
            product.ProduceDate = ProduceDate.SelectedDate;
            product.SaleDate = SaleDate.SelectedDate;
            product.Prise = Convert.ToInt32(Prise.Text);
            product.SailorName = SailorName.Text;

            model.ProductSet.Add(product);
            model.SaveChanges();
            Response.Redirect("/");
        }
    }
}