using ERPProjectControl.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace ERPProjectControl
{
    public partial class sale_order_detail : System.Web.UI.Page
    {
        private String site_id;
        private String project_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                if (Request.QueryString["id"].ToString() != "0")
                {
                    SqlDataSourceSalesOrder.SelectCommand = string.Format(Constant.Constant.querySaleOrder, Request.QueryString["id"]);

                    DataView dv = (DataView)SqlDataSourceSalesOrder.Select(DataSourceSelectArguments.Empty);
                    DataRowView drv = dv[0];
                    site_id = drv["site_id"].ToString();
                    project_id = drv["project_id"].ToString();

                    loadInvoiceList((drv["project_id"].ToString() != "") ? drv["project_id"].ToString() : "0");
                    loadBastProject((drv["project_id"].ToString() != "") ? drv["project_id"].ToString() : "0");

                    LabelProjectID.Text = drv["project_id_prasetia"].ToString();
                    LabelSiteID.Text = drv["site_name"].ToString();
                }
                else {
                    SqlDataSourceSalesOrder.SelectCommand = string.Format(Constant.Constant.querySaleOrder, 0);
                    RadGridListInvoice.Visible = false;
                }                
            }
            else {
                SqlDataSourceSalesOrder.SelectCommand = string.Format(Constant.Constant.querySaleOrder, 0);
                RadGridListInvoice.Visible = false;
            }            
        }

        protected void loadInvoiceList(string project_id) {
            SqlDataSourceInvoiceList.SelectCommand = string.Format(Constant.Constant.querySaleInvoice, project_id);
        }

        protected void loadBastProject(string project_id) {
            DataView dv = (DataView)SqlDataSourceBinderVolume1.Select(DataSourceSelectArguments.Empty);
            if (dv.Count == 0 && project_id != "0") {
                generateBastProjectDocument(project_id);
            }
            SqlDataSourceBinderVolume1.DataBind();
        }

        protected void generateBastProjectDocument(string project_id) {
            SqlDataSourceBinderVolume1.UpdateCommand = string.Format(BastModel.queryGenerateBastDocument, project_id);
            SqlDataSourceBinderVolume1.Update();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            var site_id_customer = ((TextBox)FormViewPO.FindControl("txtSiteIdCustomer")).Text;
            var area = ((RadDropDownList)FormViewPO.FindControl("ddlArea")).SelectedValue;
            var sub_area = ((RadDropDownList)FormViewPO.FindControl("ddlSubArea")).SelectedValue;
            var sub_tipe_project = ((RadDropDownList)FormViewPO.FindControl("ddl_sub_tipe_project")).SelectedValue;
            var deskripsi_po = ((TextBox)FormViewPO.FindControl("txtDeskripsiPO")).Text;
            var status_po = ((RadDropDownList)FormViewPO.FindControl("ddlStatusPO")).SelectedValue;

            SqlDataSourceArea.UpdateCommand = string.Format(Constant.Constant.queryUpdateSite,
                site_id,
                checkNullOrEmpty(site_id_customer, "''"),
                checkNullOrEmpty(area, "NULL"),
                checkNullOrEmpty(sub_area, "NULL"));
            SqlDataSourceArea.Update();

            SqlDataSourceArea.UpdateCommand = string.Format(Constant.Constant.queryUpdateProject,
                project_id,
                checkNullOrEmpty(sub_tipe_project, "NULL"));
            SqlDataSourceArea.Update();            

            SqlDataSourceArea.UpdateCommand = string.Format(Constant.Constant.queryUpdateSaleOrderLine,
                Request.QueryString["id"],
                checkNullOrEmpty(deskripsi_po, "''"),
                (checkNullOrEmpty(status_po, "NULL") == "NULL") ? "NULL" : "'" + status_po + "'");
            SqlDataSourceArea.Update();
            PanelStatus.Visible = true;
            FormViewPO.DataBind();
        }

        private string checkNullOrEmpty(String val, String repl) { 
            return string.IsNullOrEmpty(val)? repl : val;
        }
    }
}