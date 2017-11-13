using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace ERPProjectControl
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadGridListPO_FilterCheckListItemsRequested(object sender, Telerik.Web.UI.GridFilterCheckListItemsRequestedEventArgs e)
        {
            string DataField = (e.Column as IGridDataColumn).GetActiveDataField();

            e.ListBox.DataSource = GetDataTable(DataField);
            e.ListBox.DataKeyField = DataField;
            e.ListBox.DataTextField = DataField;
            e.ListBox.DataValueField = DataField;
            e.ListBox.DataBind();
        }

        public DataTable GetDataTable(string field)
        {
            string query = string.Format("SELECT DISTINCT {0} FROM project_control_sales_order", field);

            SqlDataSourceSalesOrderLineFilter.SelectCommand = query;

            //String ConnString = ConfigurationManager.ConnectionStrings["PrasetiaDwidharmaConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(ConnString);
            //SqlDataAdapter adapter = new SqlDataAdapter();
            //adapter.SelectCommand = new SqlCommand(query, conn);

            DataTable myDataTable = ((DataView) SqlDataSourceSalesOrderLineFilter.Select(DataSourceSelectArguments.Empty)).Table;

            //adapter.Fill(myDataTable);

            //conn.Open();
            //try
            //{
            //    adapter.Fill(myDataTable);
            //}
            //finally
            //{
            //    conn.Close();
            //}

            return myDataTable;
        }

        protected DateTime? SetShippedDate(GridItem item)
        {
            if (item.OwnerTableView.GetColumn("date_order").CurrentFilterValue == string.Empty)
            {
                return new DateTime?();
            }
            else
            {
                return DateTime.Parse(item.OwnerTableView.GetColumn("date_order").CurrentFilterValue);
            }
        }
    }
}