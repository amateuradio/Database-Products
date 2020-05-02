using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Products
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                Guid id = new Guid(Request.Params["ProductId"]);
                emodelPDContainer model = new emodelPDContainer();
                MaintenanceWorksTable.DataSource = (from Pro in model.MaintenanceWorkSet
                                               where Pro.Product.Id == id
                                               select Pro).ToList();
                MaintenanceWorksTable.DataBind();
                Session["ProductId"] = id;
                
            }
        }

        protected void AddMaintenanceWorks_Click(object sender, EventArgs e)
        {
            //DateTime SelectedDateTime = new DateTime();
            string test;
            test = Convert.ToString(Date_date.SelectedDate);
            test = test.Substring(0, 11);
            test = test + Date_time.Text + ":00";
            DateTime MWdateTime = Convert.ToDateTime(test);
            

            emodelPDContainer model = new emodelPDContainer();
            Guid id = (Guid)Session["ProductId"];
            Product product = (from Pr in model.ProductSet
                                   where Pr.Id == id
                                   select Pr).First();
            MaintenanceWork work = new MaintenanceWork();
            work.Id = Guid.NewGuid();
            work.Name = Name.Text;
            work.Date = MWdateTime;
            work.WorkersId = Convert.ToInt32(WorkersId.Text);
            product.MaintenanceWorks.Add(work);
            model.SaveChanges();
            Response.Redirect("~/MaintenanceWorksEdit.aspx?ProductId=" + id.ToString());
        }
    }
}