<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="sale_order.aspx.cs" Inherits="ERPProjectControl._default" %>
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
                                    GroupingSettings-CaseSensitive="False"
                                    DataSourceID="SqlDataSourceSalesOrderLine" EnableHeaderContextAggregatesMenu="True"
                                    EnableHeaderContextFilterMenu="True"
                                    EnableHeaderContextMenu="True"
                                    PageSize="20" ShowGroupPanel="True"
                                    AllowAutomaticUpdates="True">

                                    <ClientSettings Resizing-AllowResizeToFit="True" Resizing-ResizeGridOnColumnResize="False" Resizing-EnableRealTimeResize="False" Resizing-AllowRowResize="False" Resizing-AllowColumnResize="False" Scrolling-FrozenColumnsCount="3" AllowDragToGroup="True">
                                        <Scrolling UseStaticHeaders="True" AllowScroll="True" ScrollHeight="500px"></Scrolling>
                                    </ClientSettings>

                                    <MasterTableView DataSourceID="SqlDataSourceSalesOrderLine" AutoGenerateColumns="False" 
                                        EnableHeaderContextAggregatesMenu="True" CommandItemDisplay="Top" DataKeyNames="ID">
                                        <CommandItemSettings ShowAddNewRecordButton="False"></CommandItemSettings>
                                        <Columns>
                                            <telerik:GridHyperLinkColumn UniqueName="HyperlinkEditColumn"
                                                DataNavigateUrlFields="ID" DataNavigateUrlFormatString="sale_order_detail.aspx?id={0}" 
                                                Text="Edit" ItemStyle-CssClass="btn btn-primary" HeaderStyle-Width="40px"
                                                Target="_blank"></telerik:GridHyperLinkColumn>                                                                                       
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
                                            <telerik:GridBoundColumn DataField="area_name" ReadOnly="True" 
                                                HeaderText="Area Name" SortExpression="area_name" 
                                                UniqueName="area_name" FilterControlAltText="Filter area_name column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="sub_area_name" ReadOnly="True" 
                                                HeaderText="Sub Area Name" SortExpression="sub_area_name" 
                                                UniqueName="sub_area_name" FilterControlAltText="Filter sub_area_name column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="nilai_project" HeaderText="Nilai Project" 
                                                SortExpression="nilai_project" UniqueName="nilai_project" 
                                                FilterControlAltText="Filter nilai_project column" ReadOnly="true" 
                                                HeaderStyle-Width="110px" DataFormatString="{0:N}"
                                                AllowFiltering="false"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="project_type" ReadOnly="True" 
                                                HeaderText="Tipe Project" SortExpression="project_type" 
                                                UniqueName="project_type" FilterControlAltText="Filter project_type column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="sub_project_type" ReadOnly="True" 
                                                HeaderText="Sub Tipe Project" SortExpression="sub_project_type" 
                                                UniqueName="sub_project_type" FilterControlAltText="Filter sub_project_type column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="sales_order_description" ReadOnly="True" 
                                                HeaderText="Deskripsi PO" SortExpression="sales_order_description" 
                                                UniqueName="sales_order_description" FilterControlAltText="Filter sales_order_description column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="project_control_state_line" ReadOnly="True" 
                                                HeaderText="Status PO" SortExpression="project_control_state_line" 
                                                UniqueName="project_control_state_line" FilterControlAltText="Filter project_control_state_line column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="count_bast" ReadOnly="True" 
                                                HeaderText="Total Dokumen" SortExpression="count_bast" 
                                                UniqueName="count_bast" FilterControlAltText="Filter count_bast column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>                                            
                                            <telerik:GridBoundColumn DataField="count_bast_mandatory" ReadOnly="True" 
                                                HeaderText="Total Dokumen Mandatory" SortExpression="count_bast_mandatory" 
                                                UniqueName="count_bast_mandatory" FilterControlAltText="Filter count_bast_mandatory column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="count_bast_status" ReadOnly="True" 
                                                HeaderText="Total Dokumen Submited" SortExpression="count_bast_status" 
                                                UniqueName="count_bast_status" FilterControlAltText="Filter count_bast_status column"
                                                HeaderStyle-Width="150px"></telerik:GridBoundColumn>                                            
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </telerik:RadAjaxPanel>
                            <telerik:RadInputManager ID="RadInputPO" runat="server">
                                <telerik:TextBoxSetting BehaviorID="TextBoxSetting1"></telerik:TextBoxSetting>
                            </telerik:RadInputManager>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSourceSalesOrderLine" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT id, no_so, no_po, date_order, customer, site_id_customer, project_id_prasetia, site_name, area_name, sub_area_name, nilai_project, project_type, sub_project_type, project_control_state_line, sales_order_description, project_id, area_id, sub_area_id, sub_tipe_project_id, site_id, count_bast_status, count_bast, count_bast_mandatory FROM prasetia_dwidharma."public".project_control_sales_order' />
    <%--<asp:SqlDataSource ID="SqlDataSourceSalesOrderLine" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT "public".sale_order_line.id, "public".sale_order.name AS no_so, "public".sale_order.client_order_ref AS no_po, "public".sale_order.date_order, "public".res_partner.name AS customer, "public".project_site.site_id_customer, "public".account_analytic_account.name AS project_id_prasetia, "public".project_site.name AS site_name, "public".project_control_area.name AS area_name, "public".project_control_sub_area.name AS sub_area_name, "public".sale_order_line.price_unit AS nilai_project, "public".project_site_type.name AS project_type, "public".project_control_sub_tipe_project.name AS sub_project_type, "public".sale_order_line.project_control_state_line, "public".sale_order_line.sales_order_description FROM { oj { oj { oj { oj { oj { oj { oj { oj { oj prasetia_dwidharma."public".sale_order_line LEFT OUTER JOIN prasetia_dwidharma."public".sale_order ON "public".sale_order_line.order_id = "public".sale_order.id } LEFT OUTER JOIN prasetia_dwidharma."public".res_partner ON "public".sale_order.partner_id = "public".res_partner.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_project ON "public".sale_order_line.project_id = "public".project_project.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_site ON "public".project_project.site_id = "public".project_site.id } LEFT OUTER JOIN prasetia_dwidharma."public".account_analytic_account ON "public".project_project.analytic_account_id = "public".account_analytic_account.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_control_area ON "public".project_site.project_control_area_id = "public".project_control_area.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_control_sub_area ON "public".project_site.project_control_sub_area_id = "public".project_control_sub_area.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_site_type ON "public".project_project.site_type_id = "public".project_site_type.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_control_sub_tipe_project ON "public".project_project.project_control_sub_tipe_project_id = "public".project_control_sub_tipe_project.id }' />--%>

</asp:Content>
