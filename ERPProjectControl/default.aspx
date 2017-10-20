<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ERPProjectControl._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadMaster" runat="server">
    <style>
        .RadGrid_Metro .rgHeader a {
            color: #ffffff!important;
        }

        .RadGrid_Metro .rgHeader {
            color: #ffffff !important;
            border-color: #007196;
            background-color: #008CBA;
        }

        .RadGrid_Metro .rgRow a, .RadGrid_Metro .rgAltRow a, .RadGrid_Metro tr.rgEditRow a, .RadGrid_Metro .rgFooter a, .RadGrid_Metro .rgEditForm a {
            color: #ffffff !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainMaster" runat="server">
    <telerik:radstylesheetmanager ID="RadStyleSheetManager2" runat="server">
    </telerik:radstylesheetmanager>
    <telerik:radscriptmanager ID="RadScriptManager2" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
            </asp:ScriptReference>
        </Scripts>
    </telerik:radscriptmanager>
    <telerik:radajaxmanager ID="RadAjaxManager2" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid3">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid3" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
        <AjaxSettings>
        </AjaxSettings>
    </telerik:radajaxmanager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro"></telerik:RadAjaxLoadingPanel>
    <section class="content-header container">
        <h1>
            Purchase Order
            <small>List</small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Home</li>
        </ol>
    </section>
    <section class="content container">
        <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-success" Visible="False">
            <strong>Success! </strong>Record was Updated successfully            
        </asp:Panel>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary"> 
                    <div class="panel-heading">
                        <h3 class="panel-title">Purchase Order List</h3>
                    </div>
                    <div class="panel-body">             
                        <div class="row">
                            <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
                                <telerik:RadGrid ID="RadGridListPO" runat="server"
                                    AllowFilteringByColumn="True" AllowPaging="True"
                                    AllowSorting="True" Skin="Metro" CellSpacing="-1"
                                    GroupingSettings-CaseSensitive="False" DataSourceID="SqlDataSourceSalesOrderLine" EnableHeaderContextAggregatesMenu="True" EnableHeaderContextFilterMenu="True" EnableHeaderContextMenu="True" PageSize="20" ShowGroupPanel="True">

                                    <ClientSettings Resizing-AllowResizeToFit="True" Resizing-ResizeGridOnColumnResize="False" Resizing-EnableRealTimeResize="False" Resizing-AllowRowResize="False" Resizing-AllowColumnResize="False" Scrolling-FrozenColumnsCount="3" AllowDragToGroup="True">
                                        <Scrolling UseStaticHeaders="True" AllowScroll="True" ScrollHeight="500px"></Scrolling>
                                    </ClientSettings>

                                    <MasterTableView DataSourceID="SqlDataSourceSalesOrderLine" AutoGenerateColumns="False" EnableHeaderContextAggregatesMenu="True">
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="no_so" ReadOnly="True" 
                                                HeaderText="Nomor SO" SortExpression="no_so" 
                                                UniqueName="no_so" FilterControlAltText="Filter no_so column" 
                                                HeaderStyle-Width="180px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="no_po" ReadOnly="True" HeaderText="Nomor PO" 
                                                SortExpression="no_po" UniqueName="no_po" 
                                                FilterControlAltText="Filter no_po column" HeaderStyle-Width="190px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="date_order" ReadOnly="True" HeaderText="Tanggal PO" 
                                                SortExpression="date_order" UniqueName="date_order" 
                                                DataType="System.DateTime" FilterControlAltText="Filter date_order column" 
                                                DataFormatString="{0:dd-MMM-yyyy}" AllowFiltering="false"
                                                HeaderStyle-Width="100px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="date_order" ReadOnly="True" HeaderText="Tahun PO" 
                                                SortExpression="year_order" UniqueName="year_order" 
                                                DataType="System.DateTime" FilterControlAltText="Filter date_order column" 
                                                DataFormatString="{0:yyyy}" AllowFiltering="true"
                                                HeaderStyle-Width="120px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="customer" ReadOnly="True" 
                                                HeaderText="Customer" SortExpression="customer" 
                                                UniqueName="customer" FilterControlAltText="Filter customer column"
                                                HeaderStyle-Width="300px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="site_id_customer" ReadOnly="True" 
                                                HeaderText="Site ID Customer" SortExpression="site_id_customer" 
                                                UniqueName="site_id_customer" FilterControlAltText="Filter site_id_customer column"
                                                HeaderStyle-Width="120px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="project_id_prasetia" ReadOnly="True" 
                                                HeaderText="Project ID Customer" SortExpression="project_id_prasetia" 
                                                UniqueName="project_id_prasetia" FilterControlAltText="Filter project_id_prasetia column"
                                                HeaderStyle-Width="120px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="site_name" ReadOnly="True" 
                                                HeaderText="Site Name" SortExpression="site_name" 
                                                UniqueName="site_name" FilterControlAltText="Filter site_name column"
                                                HeaderStyle-Width="300px"></telerik:GridBoundColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </telerik:RadAjaxPanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSourceSalesOrderLine" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT "public".sale_order.name AS NO_SO, "public".sale_order.client_order_ref AS NO_PO, "public".sale_order.date_order AS DATE_ORDER, "public".res_partner.name AS CUSTOMER, "public".project_site.site_id_customer AS SITE_ID_CUSTOMER, "public".account_analytic_account.name AS PROJECT_ID_PRASETIA, "public".project_site.name AS SITE_NAME FROM { oj { oj { oj { oj { oj "public".sale_order_line LEFT OUTER JOIN "public".sale_order ON "public".sale_order_line.order_id = "public".sale_order.id } LEFT OUTER JOIN "public".res_partner ON "public".sale_order.partner_id = "public".res_partner.id } LEFT OUTER JOIN "public".project_project ON "public".sale_order_line.project_id = "public".project_project.id } LEFT OUTER JOIN "public".project_site ON "public".project_project.site_id = "public".project_site.id } LEFT OUTER JOIN "public".account_analytic_account ON "public".project_project.analytic_account_id = "public".account_analytic_account.id }' />
</asp:Content>
