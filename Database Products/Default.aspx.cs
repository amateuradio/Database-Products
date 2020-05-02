using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Products
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!Page.IsPostBack)
            {
                emodelPDContainer model = new emodelPDContainer();
                ProductTable.DataSource = (from P in model.ProductSet
                                           select P).OrderBy(s => s.Id).ToList();
                ProductTable.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/NewProduct");
        }
    }
}