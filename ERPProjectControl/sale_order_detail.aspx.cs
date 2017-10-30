using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERPProjectControl
{
    public partial class sale_order_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSourceSalesOrder.SelectCommand = string.Format(@"SELECT
                                                        project_control_sales_order.id,
                                                        project_control_sales_order.no_so,
                                                        project_control_sales_order.no_po,
                                                        project_control_sales_order.date_order,
                                                        project_control_sales_order.customer,
                                                        project_control_sales_order.site_id_customer,
                                                        project_control_sales_order.project_id_prasetia,
                                                        project_control_sales_order.site_name,
                                                        project_control_sales_order.area_name,
                                                        project_control_sales_order.sub_area_name,
                                                        project_control_sales_order.nilai_project,
                                                        project_control_sales_order.project_type,
                                                        project_control_sales_order.sub_project_type,
                                                        project_control_sales_order.project_control_state_line,
                                                        project_control_sales_order.sales_order_description,
                                                        project_control_sales_order.project_id
                                                        FROM
                                                        project_control_sales_order
                                                        WHERE
                                                        id={0}", Request.QueryString["id"]);

            DataView dv = (DataView)SqlDataSourceSalesOrder.Select(DataSourceSelectArguments.Empty);
            DataRowView drv = dv[0];
            SqlDataSourceInvoiceList.SelectCommand = string.Format(@"SELECT
                                                        account_invoice_line.id,
                                                        account_invoice.name AS invoice_number,
                                                        account_analytic_account.name AS project_id,
                                                        account_invoice_line.name AS description,
                                                        account_invoice_line.price_subtotal AS amount,
                                                        account_invoice.state AS status,
                                                        account_invoice.date_invoice
                                                        FROM
                                                        account_invoice_line
                                                        LEFT JOIN account_invoice ON account_invoice_line.invoice_id = account_invoice.id
                                                        LEFT JOIN project_project ON account_invoice_line.project_id = project_project.id
                                                        LEFT JOIN account_analytic_account ON project_project.analytic_account_id = account_analytic_account.id
                                                        WHERE
                                                        account_invoice_line.project_id = {0}", drv["project_id"].ToString());
            LabelProjectID.Text = drv["project_id_prasetia"].ToString();
            LabelSiteID.Text = drv["site_name"].ToString();
        }

        protected DataView getSalesOrder() {
            return (DataView)SqlDataSourceSalesOrder.Select(DataSourceSelectArguments.Empty);
        }
    }
}