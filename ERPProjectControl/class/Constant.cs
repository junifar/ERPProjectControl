using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ERPProjectControl.Constant
{
	static class Constant
	{
        public static string querySaleOrder = @"SELECT
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
                                                project_control_sales_order.project_id,
                                                project_control_sales_order.area_id,
                                                project_control_sales_order.sub_area_id,
                                                project_control_sales_order.sub_tipe_project_id,
                                                project_control_sales_order.site_id
                                                FROM
                                                project_control_sales_order
                                                WHERE
                                                id={0}";

        public static string querySaleInvoice = @"SELECT
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
                                                account_invoice_line.project_id = {0}";

        public static string queryUpdateSite = @"UPDATE
	                                                PROJECT_SITE
                                                SET
	                                                SITE_ID_CUSTOMER = '{1}',
	                                                PROJECT_CONTROL_AREA_ID = {2},
	                                                PROJECT_CONTROL_SUB_AREA_ID = {3}
                                                WHERE
	                                                ID = {0}";

        public static string queryUpdateSaleOrderLine = @"UPDATE
	                                                        SALE_ORDER_LINE
                                                        SET
	                                                        SALES_ORDER_DESCRIPTION = '{1}',
	                                                        PROJECT_CONTROL_STATE_LINE = {2},
                                                            CHECK_STATUS_PO = {3}
                                                        WHERE
	                                                        ID = {0}";

        public static string queryUpdateProject = @"UPDATE
	                                                    PROJECT_PROJECT
                                                    SET
	                                                    PROJECT_CONTROL_SUB_TIPE_PROJECT_ID = {1}
                                                    WHERE
	                                                    ID = {0}";
	}
}