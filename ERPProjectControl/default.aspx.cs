using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace ERPProjectControl
{
    public partial class _default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                RadPivotGrid1.CollapseAllRowGroups(true);
                RadPivotGridPOByYearStatus.CollapseAllRowGroups(true);
                RadPivotGridPOByYearCustomer.CollapseAllRowGroups(true);
                RadPivotGridCustomerByProjectType.CollapseAllRowGroups(true);
                RadPivotGridCountPoByArea.CollapseAllRowGroups(true);
                RadPivotGridSumPOByArea.CollapseAllRowGroups(true);
            }


            ////POTrendChart.PlotArea.XAxis.Items.Add("2014");
            ////POTrendChart.PlotArea.XAxis.Items.Add("2015");
            ////POTrendChart.PlotArea.XAxis.Items.Add("2016");

            //DataView dv = (DataView)ChartOpenPOSqlDataSource.Select(DataSourceSelectArguments.Empty);
            //if (dv.Count > 0) {
            //    //foreach (DataRowView drv in dv)
            //    //{
            //    //    addCharPoOpenData(drv["periode"].ToString(), Convert.ToInt16(drv["total_open_po"]));
            //    //}
            //    addCharPoOpenData("2000", dv);
            //}
        }

        private void addCharPoOpenData(String series_name, int values = 0) {
            //AreaSeries areaSeries = new AreaSeries();
            //areaSeries.Name = series_name;
            //areaSeries.SeriesItems.Add(values, System.Drawing.Color.Aquamarine);            
            //POTrendChart.PlotArea.Series.Add(areaSeries);
        }

        private void addCharPoOpenData(String series_name, DataView dv) {
            //AreaSeries areaSeries = new AreaSeries();
            //areaSeries.Name = series_name;
            //foreach (DataRowView drv in dv)
            //{
            //    POTrendChart.PlotArea.XAxis.Items.Add(drv["periode"].ToString());
            //    areaSeries.SeriesItems.Add(Convert.ToInt16(drv["total_open_po"]), System.Drawing.Color.Aquamarine);
            //}
            //areaSeries.LineAppearance.LineStyle = Telerik.Web.UI.HtmlChart.Enums.ExtendedLineStyle.Smooth; ;
            //POTrendChart.PlotArea.Series.Add(areaSeries);
        }

    }
}