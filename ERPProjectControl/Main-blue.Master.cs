using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaintenanceProjectManagement
{
    public partial class Main_blue : System.Web.UI.MasterPage
    {
        private string currentPageName;
        protected void Page_Load(object sender, EventArgs e)
        {
            //currentPageName = Path.GetFileName(Request.Path);
            //if ((Session["UserName"] == null && currentPageName != "login.aspx") || (Session["Password"] == null && currentPageName != "login.aspx"))
            //{
            //    if (!Page.IsCallback)
            //    {
            //        Response.Redirect("/login.aspx");
            //    }
            //}
        }
    }
}