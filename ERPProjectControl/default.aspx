<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ERPProjectControl._default1" %>
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
            <telerik:AjaxSetting AjaxControlID="RadPivotGridPOByYearStatus">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadPivotGridPOByYearStatus" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadPivotGridCustomerByProjectType">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadPivotGridCustomerByProjectType" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadPivotGridCountPoByArea">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadPivotGridCountPoByArea" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
        <AjaxSettings>
        </AjaxSettings>
    </telerik:radajaxmanager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro"></telerik:RadAjaxLoadingPanel>
    <section class="content-header container">
        <h1>
            Dashboard
            <small>Control panel - periode <asp:Label ID="labelTahun" runat="server" /></small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Home</li>
        </ol>
    </section>
    <section class="content container">
        <%--<div class="row">
            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>150000</h3>
                        <p>PO Count</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                        More info <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>1500</h3>
                        <p>PO Open</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                      More info <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>15.000.000,00</h3>
                        <p>PO Open Value</p>
                    </div>
                    <div class="icon">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <a href="#" class="small-box-footer">
                      More info <i class="fa fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
        </div>--%>
        <div class="row">
            <%--<div class="col-md-12">
                 <div class="panel panel-primary"> 
                    <div class="panel-heading">
                        <h3 class="panel-title">PO History</h3>
                    </div>
                    <div class="panel-body">             
                        <div class="row">
                            <div class="col-md-12">
                                <telerik:RadHtmlChart ID="POTrendChart" runat="server" DataSourceID="ChartOpenPOSqlDataSource" >
                                    <PlotArea>
                                        <Series>
                                            <telerik:AreaSeries DataFieldY="total_open_po" Name="a">
                                                <Appearance>
                                                    <FillStyle BackgroundColor="Violet" />
                                                </Appearance>
                                            </telerik:AreaSeries>
                                            <telerik:AreaSeries DataFieldY="total_po" Name="b">
                                                <Appearance>
                                                    <FillStyle BackgroundColor="PaleGreen" />
                                                </Appearance>
                                            </telerik:AreaSeries>
                                        </Series>
                                        <XAxis DataLabelsField="periode"></XAxis>
                                    </PlotArea>
                                </telerik:RadHtmlChart>
                            </div>                            
                        </div>
                    </div>
                </div>   
            </div>--%>
            <div class="col-md-12">
                 <div class="panel panel-primary"> 
                    <div class="panel-heading">
                        <h3 class="panel-title">PO By Year</h3>
                    </div>
                    <div class="panel-body">             
                        <div class="row">
                            <%--<div class="col-md-12">--%>
                                <telerik:RadPivotGrid ID="RadPivotGridPOByYearStatus" runat="server" DataSourceID="POByYearCustomerSqlDataSource">
                                    <Fields>
                                        <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Tahun"></telerik:PivotGridRowField>
                                        <telerik:PivotGridRowField UniqueName="column_area" DataField="area" Caption="Area"></telerik:PivotGridRowField>
                                        <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>
                                        <telerik:PivotGridColumnField UniqueName="project_control_state_line" DataField="project_control_state_line" Caption="Status"></telerik:PivotGridColumnField>                                        
                                        <telerik:PivotGridAggregateField Aggregate="Count" GrandTotalAggregateFormatString="" CalculationExpression="" UniqueName="columnCountTotal" DataField="id">
                                            <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                        </telerik:PivotGridAggregateField>
                                    </Fields>                                    
                                </telerik:RadPivotGrid>
                            <%--</div>--%>                            
                        </div>
                    </div>
                </div>   
            </div>
            <div class="col-md-12">
                <telerik:RadTabStrip runat="server" ID="radStrip1" MultiPageID="radMultiPage1" EnableTheming="true"
                    Skin="BlackMetroTouch" SelectedIndex="0">
                    <Tabs>
                        <telerik:RadTab Text="Count PO Customer By Year"></telerik:RadTab>
                        <telerik:RadTab Text="Sum PO Customer By Year"></telerik:RadTab>
                        <telerik:RadTab Text="Count PO Customer By Project Type"></telerik:RadTab>
                        <telerik:RadTab Text="Count PO Area By Year"></telerik:RadTab>
                        <telerik:RadTab Text="Sum PO Area By Year"></telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
                <telerik:RadMultiPage runat="server" ID="radMultiPage1" SelectedIndex="0">
                    <telerik:RadPageView ID="pageTotalPOCustomer" runat="server">
                        <%--<div class="col-md-12">--%>
                            <div class="panel panel-primary"> 
                                <div class="panel-heading">
                                    <h3 class="panel-title">PO Quantity By Year</h3>
                                </div>
                                <div class="panel-body">             
                                    <div class="row">                            
                                        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" 
                                            HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
                                            <telerik:RadPivotGrid ID="RadPivotGridPOByYearCustomer" runat="server"
                                                Skin="Bootstrap" DataSourceID="POByYearCustomerSqlDataSource" AggregatesLevel="1">
                                                <Fields>
                                                    <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Tahun"></telerik:PivotGridRowField>                                                    
                                                    <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>                                        
                                                    <telerik:PivotGridColumnField UniqueName="column_project_control_state_line" DataField="project_control_state_line" Caption="Status"></telerik:PivotGridColumnField>
                                                    <telerik:PivotGridAggregateField Aggregate="Count" GrandTotalAggregateFormatString="" CalculationExpression="" UniqueName="columnCountTotal" DataField="id">
                                                        <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                                    </telerik:PivotGridAggregateField>
                                                </Fields>
                                            </telerik:RadPivotGrid>
                               
                                        </telerik:RadAjaxPanel>      
                                    </div>
                                </div>
                                </div>
                        <%--</div>--%>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="pageSumPOCustomer" runat="server">
                        <%--<div class="col-md-12">--%>
                            <div class="panel panel-primary"> 
                                <div class="panel-heading">
                                    <h3 class="panel-title">PO Value By Year</h3>
                                </div>
                                <div class="panel-body">             
                                    <div class="row">
                                        <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
                                            <telerik:RadPivotGrid ID="RadPivotGrid1" runat="server"
                                                Skin="Bootstrap" DataSourceID="POByYearCustomerSqlDataSource" AggregatesLevel="1">
                                                <Fields>
                                                    <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Tahun"></telerik:PivotGridRowField>
                                                    <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>                                        
                                                    <telerik:PivotGridColumnField UniqueName="column_project_control_state_line" DataField="project_control_state_line" Caption="Status"></telerik:PivotGridColumnField>
                                                    <telerik:PivotGridAggregateField Aggregate="Sum" 
                                                        GrandTotalAggregateFormatString="" CalculationExpression="" 
                                                        UniqueName="columnSumTotal" DataField="price_unit" DataFormatString="{0:N}">
                                                        <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                                    </telerik:PivotGridAggregateField>
                                                </Fields>
                                            </telerik:RadPivotGrid>
                                        </telerik:RadAjaxPanel>
                                    </div>
                                </div>
                            </div>
                        <%--</div>--%>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="pageCountPOCustomerByProjectType" runat="server">
                        <div class="panel panel-primary"> 
                            <div class="panel-heading">
                                <h3 class="panel-title">Count PO Customer By Project Type</h3>
                            </div>
                            <div class="panel-body">             
                                <div class="row">
                                    <telerik:RadPivotGrid ID="RadPivotGridCustomerByProjectType" runat="server" DataSourceID="POByYearCustomerSqlDataSource">
                                        <Fields>
                                            <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Periode"></telerik:PivotGridRowField>
                                            <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>                                            
                                            <telerik:PivotGridColumnField UniqueName="column_project_type" DataField="project_type" Caption="Project Type"></telerik:PivotGridColumnField>
                                            <telerik:PivotGridAggregateField Aggregate="Count" GrandTotalAggregateFormatString="" CalculationExpression="" UniqueName="columnCountTotal" DataField="id">
                                                <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                            </telerik:PivotGridAggregateField>
                                        </Fields>                                    
                                    </telerik:RadPivotGrid>
                                </div>
                            </div>
                        </div>                        
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="pageCountPOAreaByYear" runat="server">
                        <div class="panel panel-primary"> 
                            <div class="panel-heading">
                                <h3 class="panel-title">Count PO Area By Year</h3>
                            </div>
                            <div class="panel-body">             
                                <div class="row">
                                    <telerik:RadPivotGrid ID="RadPivotGridCountPoByArea" runat="server" DataSourceID="POByYearCustomerSqlDataSource">
                                        <Fields>
                                            <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Periode"></telerik:PivotGridRowField>
                                            <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>                                            
                                            <telerik:PivotGridColumnField UniqueName="column_area" DataField="area" Caption="Area"></telerik:PivotGridColumnField>
                                            <telerik:PivotGridAggregateField Aggregate="Count" GrandTotalAggregateFormatString="" CalculationExpression="" UniqueName="columnCountTotal" DataField="id">
                                                <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                            </telerik:PivotGridAggregateField>
                                        </Fields>                                    
                                    </telerik:RadPivotGrid>
                                </div>
                            </div>
                        </div>                        
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="pageSumPOAreaByYear" runat="server">
                        <div class="panel panel-primary"> 
                            <div class="panel-heading">
                                <h3 class="panel-title">Sum PO Area By Year</h3>
                            </div>
                            <div class="panel-body">             
                                <div class="row">
                                    <telerik:RadPivotGrid ID="RadPivotGridSumPOByArea" runat="server"
                                        Skin="Bootstrap" DataSourceID="POByYearCustomerSqlDataSource" AggregatesLevel="1">
                                        <Fields>
                                            <telerik:PivotGridColumnField UniqueName="column_area" DataField="area" Caption="Area"></telerik:PivotGridColumnField>
                                            <telerik:PivotGridRowField UniqueName="column_periode" DataField="periode" Caption="Periode"></telerik:PivotGridRowField>
                                            <telerik:PivotGridRowField UniqueName="column_customer" DataField="customer" Caption="Customer"></telerik:PivotGridRowField>                                        
                                            <telerik:PivotGridAggregateField Aggregate="Sum" 
                                                GrandTotalAggregateFormatString="" CalculationExpression="" 
                                                UniqueName="columnSumTotal" DataField="price_unit" DataFormatString="{0:N}">
                                                <TotalFormat Level="0" Axis="Rows" TotalFunction="NoCalculation" SortOrder="Ascending"></TotalFormat>
                                            </telerik:PivotGridAggregateField>
                                        </Fields>
                                    </telerik:RadPivotGrid>
                                </div>
                            </div>
                        </div>                        
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
            </div>
            
            
        </div>
    </section>
    <asp:SqlDataSource ID="POByYearCustomerSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT periode, customer, id, price_unit, project_control_state_line, project_type, area FROM prasetia_dwidharma."public".project_control_po_by_year WHERE (periode > 2014)' />
    <asp:SqlDataSource ID="ChartOpenPOSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT periode, total_open_po, total_po FROM prasetia_dwidharma."public".project_control_po_total_open WHERE (periode > 2014) ORDER BY periode' />

    <%--<asp:SqlDataSource ID="POByYearCustomerSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT periode, customer, id, price_unit, project_control_state_line, project_type, area FROM prasetia_dwidharma."public".project_control_po_by_year' />
    <asp:SqlDataSource ID="ChartOpenPOSqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT periode, total_open_po, total_po FROM prasetia_dwidharma."public".project_control_po_total_open ORDER BY periode' />--%>
</asp:Content>
