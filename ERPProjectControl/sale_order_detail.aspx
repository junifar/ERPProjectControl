<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="sale_order_detail.aspx.cs" Inherits="ERPProjectControl.sale_order_detail" %>
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
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGrid2">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGrid3">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid3" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadGridListInvoice">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGridListInvoice" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="btnsubmit">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PanelStatus" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="FormViewPO" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid3" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                    <telerik:AjaxUpdatedControl ControlID="RadGridListInvoice" LoadingPanelID="RadAjaxLoadingPanel1"></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:radajaxmanager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro"></telerik:RadAjaxLoadingPanel>
    <section class="content-header container">
        <h1>
            Purchase Order
            <small>Details</small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Purchase Order</li>
        </ol>
    </section>
    <section class="content container">
         <asp:Panel ID="PanelStatus" runat="server" CssClass="alert alert-success" Visible="False">
            <strong>Success! </strong>Record was saved successfully     
             <asp:Label ID="lblinfo" runat="server" />       
        </asp:Panel>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary"> 
                    <div class="panel-heading">
                        <h3 class="panel-title"><asp:Label ID="LabelProjectID" runat="server"></asp:Label>-<asp:Label ID="LabelSiteID" runat="server"></asp:Label></h3>
                    </div>
                    <div class="panel-body">             
                        <div class="row">
                            <asp:FormView ID="FormViewPO" runat="server" 
                                DataKeyNames="id" DataSourceID="SqlDataSourceSalesOrder" DefaultMode="Edit">
                                <EditItemTemplate>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="No SO" runat="server" For="txtnoso" />
                                                        <asp:TextBox runat="server" ID="txtnoso" class="form-control input-sm" placeholder="No SO" Text='<%# Eval("no_so") %>' ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <asp:Label Text="No PO" runat="server" For="txtnopo" />
                                                        <asp:TextBox runat="server" ID="txtnopo" class="form-control input-sm" placeholder="No PO" Text='<%# Eval("no_po") %>' ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-3">
                                                        <asp:Label Text="Tanggal Terima PO" runat="server" For="txttglpo" />
                                                        <asp:TextBox runat="server" ID="txttglpo" class="form-control input-sm" placeholder="Tanggal Terima PO" Text='<%# Eval("date_order","{0:dd-MMM-yyyy}") %>' 
                                                            ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <hr />
                                                </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-md-6">
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Site ID Customer" runat="server" For="txtSiteIdCustomer" />
                                                        <asp:TextBox runat="server" ID="txtSiteIdCustomer" class="form-control input-sm" placeholder="Site ID Customer" Text='<%# Eval("site_id_customer") %>'></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Project ID" runat="server" For="txtProjectID" />
                                                        <asp:TextBox runat="server" ID="txtProjectID" class="form-control input-sm" placeholder="Project ID" Text='<%# Eval("project_id_prasetia") %>' ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-12">
                                                        <asp:Label Text="Site Name" runat="server" For="txtSiteName" />
                                                        <asp:TextBox runat="server" ID="txtSiteName" class="form-control input-sm" placeholder="Site Name" Text='<%# Eval("site_name") %>' ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Area" runat="server" For="ddlArea" />
                                                        <telerik:RadDropDownList ID="ddlArea" runat="server"
                                                            DataSourceID="SqlDataSourceArea"
                                                            DataTextField="NAME" DataValueField="ID"
                                                            Skin="Bootstrap" EnableTheming="False"
                                                            Width="100%" DefaultMessage="-- Please Select --" SelectedValue='<%# Bind("area_id") %>'>
                                                        </telerik:RadDropDownList>
                                                    </div>                                                      
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Sub Area" runat="server" For="ddlSubArea" />
                                                        <telerik:RadDropDownList ID="ddlSubArea" runat="server"
                                                            DataSourceID="SqlDataSourceSubArea"
                                                            DataTextField="NAME" DataValueField="ID"
                                                            Skin="Bootstrap" EnableTheming="False"
                                                            Width="100%" DefaultMessage="-- Please Select --" SelectedValue='<%# Bind("sub_area_id") %>'>
                                                        </telerik:RadDropDownList>
                                                    </div>                    
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Tipe Project" runat="server" For="txtTipeProject" />
                                                        <asp:TextBox runat="server" ID="txtTipeProject" class="form-control input-sm" placeholder="Tipe Project" Text='<%# Eval("project_type") %>' ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <asp:Label Text="Sub Tipe Project" runat="server" For="ddlSubTipeProject" />
                                                        <telerik:RadDropDownList ID="ddl_sub_tipe_project" runat="server"
                                                            DataSourceID="SqlDataSourceSubTipeProject"
                                                            DataTextField="NAME" DataValueField="ID"
                                                            Skin="Bootstrap" EnableTheming="False"
                                                            Width="100%" DefaultMessage="-- Please Select --" SelectedValue='<%# Bind("sub_tipe_project_id") %>'>
                                                        </telerik:RadDropDownList>
                                                    </div>                                              
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group col-md-12">
                                                        <asp:Label Text="Deskripsi PO" runat="server" For="txtDeskripsiPO" />
                                                        <asp:TextBox runat="server" ID="txtDeskripsiPO" class="form-control input-sm" placeholder="Deskripsi PO" Text='<%# Eval("sales_order_description") %>'
                                                            TextMode="MultiLine" Height="110px"></asp:TextBox>
                                                    </div>  
                                                    <div class="form-group col-md-12">
                                                        <asp:Label Text="Status PO" runat="server" For="ddlStatusPO" />
                                                        <telerik:RadDropDownList ID="ddlStatusPO" runat="server"
                                                            Skin="Bootstrap" EnableTheming="False"
                                                            Width="100%" DefaultMessage="-- Please Select --" SelectedValue='<%# Bind("project_control_state_line") %>'>
                                                            <Items>
                                                                <telerik:DropDownListItem runat="server" Text="Open" Value="OPEN"></telerik:DropDownListItem>
                                                                <telerik:DropDownListItem runat="server" Text="Closed" Value="CLOSED"></telerik:DropDownListItem>
                                                                <telerik:DropDownListItem runat="server" Text="Cancel" Value="CANCEL"></telerik:DropDownListItem>
                                                            </Items>
                                                        </telerik:RadDropDownList>
                                                    </div>
                                                     <div class="form-group col-md-12">
                                                        <asp:Label Text="PO Filter" runat="server" For="ddlStatusPO" />
                                                        <telerik:RadDropDownList ID="ddlListPOFilter" runat="server"
                                                            Skin="Bootstrap" EnableTheming="False"
                                                            Width="100%" DefaultMessage="-- Please Select --" SelectedValue='<%# Bind("check_status_po") %>'>
                                                            <Items>
                                                                <telerik:DropDownListItem runat="server" Text="Yes" Value="1"></telerik:DropDownListItem>
                                                                <telerik:DropDownListItem runat="server" Text="No" Value="0"></telerik:DropDownListItem>
                                                            </Items>
                                                        </telerik:RadDropDownList>
                                                    </div>              
                                                </div>
                                            </div> 
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <hr />
                                                </div>
                                            </div>                                  
                                        </div> 
                                    </div>
                                                                       
                                </EditItemTemplate>
                                
                            </asp:FormView>
                            <%--<div class="form-group col-md-12">
                                <asp:Label Text="ID" runat="server" For="txtid" />
                                <asp:TextBox runat="server" ID="txtid" class="form-control input-sm" placeholder="ID" Text='<%# Eval("PREVENTIVE_CODE") %>' ReadOnly="True"></asp:TextBox>
                            </div>--%>
                        </div>
                        
                        <div class="row">
                            <div class="form-group col-sm-12">                                                
                                <asp:Button ID="btnsubmit" runat="server" Text="Update" CssClass="btn btn-primary pull-right" OnClick="btnsubmit_Click"/>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <telerik:RadTabStrip runat="server" ID="radStrip1" MultiPageID="radMultiPage1" EnableTheming="true"
                                    Skin="BlackMetroTouch" SelectedIndex="0">
                                    <Tabs>
                                        <telerik:RadTab Text="Binder Volume I"></telerik:RadTab>
                                        <telerik:RadTab Text="Binder Volume II"></telerik:RadTab>
                                        <telerik:RadTab Text="Binder Volume III"></telerik:RadTab>
                                        <telerik:RadTab Text="PO History"></telerik:RadTab>
                                    </Tabs>
                                </telerik:RadTabStrip>
                                <telerik:RadMultiPage runat="server" ID="radMultiPage1" SelectedIndex="0">
                                    <telerik:RadPageView ID="pageBinderVolume1" runat="server">
                                        <div class="panel panel-primary"> 
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Binder Volume I</h3>
                                            </div>
                                            <div class="panel-body">
                                                <telerik:RadGrid ID="RadGrid1" runat="server"
                                                    AllowSorting="True" Skin="Office2007" CellSpacing="-1"
                                                    DataSourceID="SqlDataSourceBinderVolume1"
                                                    PageSize="20"
                                                    AllowAutomaticUpdates="true">
                                                    <MasterTableView AutoGenerateColumns="False" 
                                                        DataKeyNames="id" DataSourceID="SqlDataSourceBinderVolume1" EditMode="Batch" 
                                                        EnableHeaderContextAggregatesMenu="True"
                                                        CommandItemDisplay="TopAndBottom">
                                                        <CommandItemSettings ShowAddNewRecordButton="False"></CommandItemSettings>
                                                        <SortExpressions>
                                                            <telerik:GridSortExpression FieldName="id" SortOrder="Ascending" />
                                                        </SortExpressions>
                                                        <BatchEditingSettings EditType="Row" />
                                                        <Columns>
                                                            <telerik:GridBoundColumn DataField="id" ReadOnly="True" HeaderText="id" 
                                                                SortExpression="id" UniqueName="id" DataType="System.Int32" 
                                                                FilterControlAltText="Filter id column"
                                                                Display="false"></telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="binder_name" ReadOnly="true" 
                                                                HeaderText="Binder Name" SortExpression="binder_name" 
                                                                UniqueName="binder_name" FilterControlAltText="Filter binder_name column"
                                                                AllowFiltering="false"></telerik:GridBoundColumn>
                                                            <telerik:GridTemplateColumn DataField="status" HeaderText="Status" 
                                                                UniqueName="status" HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxStatus" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBox1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxStatusEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                            <telerik:GridTemplateColumn DataField="mandatory" HeaderText="Mandatory" UniqueName="mandatory"
                                                                HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxMandatoryEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </div>
                                        </div>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="pageBinderVolume2" runat="server">
                                        <div class="panel panel-primary"> 
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Binder Volume II</h3>
                                            </div>
                                            <div class="panel-body">
                                                <telerik:RadGrid ID="RadGrid2" runat="server"
                                                    AllowSorting="True" Skin="Office2007" CellSpacing="-1"
                                                    DataSourceID="SqlDataSourceBinderVolume2"
                                                    PageSize="20"
                                                    AllowAutomaticUpdates="true">

                                                    <MasterTableView DataKeyNames="id" DataSourceID="SqlDataSourceBinderVolume2" 
                                                        EnableHeaderContextAggregatesMenu="True" AutoGenerateColumns="False"
                                                        EditMode="Batch" CommandItemDisplay="TopAndBottom">
                                                        <CommandItemSettings ShowAddNewRecordButton="False"></CommandItemSettings>
                                                        <SortExpressions>
                                                            <telerik:GridSortExpression FieldName="id" SortOrder="Ascending" />
                                                        </SortExpressions>
                                                        <Columns>            
                                                            <telerik:GridBoundColumn DataField="id" ReadOnly="True" HeaderText="id" 
                                                                SortExpression="id" UniqueName="id" DataType="System.Int32" 
                                                                FilterControlAltText="Filter id column"
                                                                Display="false"></telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="binder_name" ReadOnly="true" 
                                                                HeaderText="Binder Name" SortExpression="binder_name" 
                                                                UniqueName="binder_name" FilterControlAltText="Filter binder_name column"
                                                                AllowFiltering="false"></telerik:GridBoundColumn>
                                                            <telerik:GridTemplateColumn DataField="status" HeaderText="Status" 
                                                                UniqueName="status" HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxStatus" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBox1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxStatusEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                            <telerik:GridTemplateColumn DataField="mandatory" HeaderText="Mandatory" UniqueName="mandatory"
                                                                HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxMandatoryEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </div>
                                        </div>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="pageBinderVolume3" runat="server">
                                        <div class="panel panel-primary"> 
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Binder Volume III</h3>
                                            </div>
                                            <div class="panel-body">
                                                <telerik:RadGrid ID="RadGrid3" runat="server"
                                                    AllowSorting="True" Skin="Office2007" CellSpacing="-1"
                                                    DataSourceID="SqlDataSourceBinderVolume3" 
                                                    PageSize="20"
                                                    AllowAutomaticUpdates="true">

                                                    <MasterTableView DataKeyNames="id" DataSourceID="SqlDataSourceBinderVolume3" 
                                                        EnableHeaderContextAggregatesMenu="True" AutoGenerateColumns="False"
                                                        EditMode="Batch" CommandItemDisplay="TopAndBottom">
                                                        <CommandItemSettings ShowAddNewRecordButton="False"></CommandItemSettings>
                                                        <SortExpressions>
                                                            <telerik:GridSortExpression FieldName="id" SortOrder="Ascending" />
                                                        </SortExpressions>
                                                        <BatchEditingSettings EditType="Row" />
                                                        <Columns>                                                                
                                                            <telerik:GridBoundColumn DataField="id" ReadOnly="True" HeaderText="id" 
                                                                SortExpression="id" UniqueName="id" DataType="System.Int32" 
                                                                FilterControlAltText="Filter id column"
                                                                Display="false"></telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="binder_name" ReadOnly="true" 
                                                                HeaderText="Binder Name" SortExpression="binder_name" 
                                                                UniqueName="binder_name" FilterControlAltText="Filter binder_name column"
                                                                AllowFiltering="false"></telerik:GridBoundColumn>
                                                            <telerik:GridTemplateColumn DataField="status" HeaderText="Status" 
                                                                UniqueName="status" HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxStatus" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("status").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBox1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxStatusEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                            <telerik:GridTemplateColumn DataField="mandatory" HeaderText="Mandatory" UniqueName="mandatory"
                                                                HeaderStyle-Width="80px" AllowFiltering="false" ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() == "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory" Enabled="false" Checked='true' onclick="checkBoxClick(this, event);" />
                                                                    </div>
                                                                    <div runat="server" visible='<%# Eval("mandatory").ToString() != "1" %>'>
                                                                        <asp:CheckBox runat="server" ID="CheckBoxMandatory1" Enabled="false" Checked='false' onclick="checkBoxClick(this, event);" />
                                                                    </div>                                        
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:CheckBox runat="server" ID="CheckBoxMandatoryEdit" />
                                                                </EditItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </div>
                                        </div>
                                    </telerik:RadPageView>
                                    <telerik:RadPageView ID="pageBinderHistoryPO" runat="server">
                                        <div class="panel panel-primary"> 
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Invoice History</h3>
                                            </div>
                                            <div class="panel-body">
                                                <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
                                                    <telerik:RadGrid ID="RadGridListInvoice" runat="server"
                                                        AllowFilteringByColumn="False" AllowPaging="True"
                                                        AllowSorting="True" Skin="Metro" CellSpacing="-1"
                                                        GroupingSettings-CaseSensitive="False"
                                                        DataSourceID="SqlDataSourceInvoiceList" EnableHeaderContextAggregatesMenu="True"
                                                        EnableHeaderContextFilterMenu="True"
                                                        EnableHeaderContextMenu="True"
                                                        PageSize="5"
                                                        AllowAutomaticUpdates="True">

                                                        <ClientSettings Resizing-AllowResizeToFit="True" Resizing-ResizeGridOnColumnResize="False" Resizing-EnableRealTimeResize="False" Resizing-AllowRowResize="False" Resizing-AllowColumnResize="False" Scrolling-FrozenColumnsCount="3">
                                                            <Scrolling UseStaticHeaders="True" AllowScroll="True" ScrollHeight="200px"></Scrolling>
                                                        </ClientSettings>
                                                        <MasterTableView DataSourceID="SqlDataSourceInvoiceList" EnableHeaderContextAggregatesMenu="True" AutoGenerateColumns="False" DataKeyNames="id">
                                                            <Columns>
                                                                <telerik:GridBoundColumn DataField="invoice_number" ReadOnly="True" 
                                                                    HeaderText="Nomor Invoice" SortExpression="invoice_number" 
                                                                    UniqueName="invoice_number" FilterControlAltText="Filter invoice_number column"
                                                                    HeaderStyle-Width="150px"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="description" ReadOnly="True" 
                                                                    HeaderText="Keterangan" SortExpression="description" 
                                                                    UniqueName="description" FilterControlAltText="Filter description column"
                                                                    HeaderStyle-Width="300px"></telerik:GridBoundColumn>                                                    
                                                                <telerik:GridBoundColumn DataField="date_invoice" ReadOnly="True" 
                                                                    HeaderText="Tanggal" SortExpression="date_invoice" 
                                                                    UniqueName="date_invoice" DataType="System.DateTime" 
                                                                    FilterControlAltText="Filter date_invoice column"
                                                                    HeaderStyle-Width="180px" DataFormatString="{0:dd-MMM-yyyy}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="amount" ReadOnly="True" 
                                                                    HeaderText="Jumlah" SortExpression="amount" 
                                                                    UniqueName="amount" DataType="System.Decimal" 
                                                                    FilterControlAltText="Filter amount column"
                                                                    HeaderStyle-Width="100px" DataFormatString="{0:N}"></telerik:GridBoundColumn>
                                                                <telerik:GridBoundColumn DataField="status" ReadOnly="True" 
                                                                    HeaderText="Status" SortExpression="status" 
                                                                    UniqueName="status" FilterControlAltText="Filter status column"
                                                                    HeaderStyle-Width="50px"></telerik:GridBoundColumn>
                                                            </Columns>
                                                        </MasterTableView>
                                                    </telerik:RadGrid>
                                                </telerik:RadAjaxPanel>
                                            </div>
                                        </div>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr />
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSourceSalesOrder" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT "public".project_control_sales_order.id, "public".project_control_sales_order.no_so, "public".project_control_sales_order.no_po, "public".project_control_sales_order.date_order, "public".project_control_sales_order.customer, "public".project_control_sales_order.site_id_customer, "public".project_control_sales_order.project_id_prasetia, "public".project_control_sales_order.site_name, "public".project_control_sales_order.area_name, "public".project_control_sales_order.sub_area_name, "public".project_control_sales_order.nilai_project, "public".project_control_sales_order.project_type, "public".project_control_sales_order.sub_project_type, "public".project_control_sales_order.project_control_state_line, "public".project_control_sales_order.sales_order_description, "public".project_control_sales_order.project_id, area_id, sub_area_id, sub_tipe_project_id, site_id, check_status_po FROM prasetia_dwidharma."public".project_control_sales_order WHERE ("public".project_control_sales_order.id = ?)'>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" DefaultValue="0" Name="?"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceInvoiceList" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT "public".account_invoice_line.id, "public".account_invoice.name AS invoice_number, "public".account_analytic_account.name AS project_id, "public".account_invoice_line.name AS description, "public".account_invoice_line.price_subtotal AS amount, "public".account_invoice.state AS status, "public".account_invoice.date_invoice FROM { oj { oj { oj prasetia_dwidharma."public".account_invoice_line LEFT OUTER JOIN prasetia_dwidharma."public".account_invoice ON "public".account_invoice_line.invoice_id = "public".account_invoice.id } LEFT OUTER JOIN prasetia_dwidharma."public".project_project ON "public".account_invoice_line.project_id = "public".project_project.id } LEFT OUTER JOIN prasetia_dwidharma."public".account_analytic_account ON "public".project_project.analytic_account_id = "public".account_analytic_account.id }' />
    <asp:SqlDataSource ID="SqlDataSourceArea" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT id, create_uid, create_date, write_date, write_uid, name FROM "public".project_control_area' />
    <asp:SqlDataSource ID="SqlDataSourceSubArea" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT id, create_uid, create_date, write_date, write_uid, name FROM prasetia_dwidharma."public".project_control_sub_area'></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceSubTipeProject" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT id, create_uid, create_date, write_date, write_uid, name FROM prasetia_dwidharma."public".project_control_sub_tipe_project'></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceBinderVolume1" runat="server"
        ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>'
        ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>'
        SelectCommand='SELECT prasetia_dwidharma."public".project_document_bast.*, prasetia_dwidharma."public".sale_order_line.id AS order_line_id, prasetia_dwidharma."public".project_document_bast_template.name AS binder_name FROM { oj { oj prasetia_dwidharma."public".project_document_bast LEFT OUTER JOIN prasetia_dwidharma."public".project_document_bast_template ON prasetia_dwidharma."public".project_document_bast.name = prasetia_dwidharma."public".project_document_bast_template.id } LEFT OUTER JOIN prasetia_dwidharma."public".sale_order_line ON prasetia_dwidharma."public".project_document_bast.project_id = prasetia_dwidharma."public".sale_order_line.project_id } WHERE (prasetia_dwidharma."public".sale_order_line.id = ?) AND (prasetia_dwidharma."public".project_document_bast_template.binder_id = 1)'
        UpdateCommand='UPDATE prasetia_dwidharma."public".project_document_bast SET status = ?, mandatory = ? WHERE (id = ?)'>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="305" Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>            
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="mandatory" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceBinderVolume2" runat="server" 
        ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' 
        ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' 
        SelectCommand='SELECT prasetia_dwidharma."public".project_document_bast.*, prasetia_dwidharma."public".sale_order_line.id AS order_line_id, prasetia_dwidharma."public".project_document_bast_template.name AS binder_name FROM { oj { oj prasetia_dwidharma."public".project_document_bast LEFT OUTER JOIN prasetia_dwidharma."public".project_document_bast_template ON prasetia_dwidharma."public".project_document_bast.name = prasetia_dwidharma."public".project_document_bast_template.id } LEFT OUTER JOIN prasetia_dwidharma."public".sale_order_line ON prasetia_dwidharma."public".project_document_bast.project_id = prasetia_dwidharma."public".sale_order_line.project_id } WHERE (prasetia_dwidharma."public".sale_order_line.id = ?) AND (prasetia_dwidharma."public".project_document_bast_template.binder_id =2)'
        UpdateCommand='UPDATE prasetia_dwidharma."public".project_document_bast SET status = ?, mandatory = ? WHERE (id = ?)'>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="305" Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>            
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="mandatory" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceBinderVolume3" runat="server" 
        ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' 
        ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' 
        SelectCommand='SELECT prasetia_dwidharma."public".project_document_bast.*, prasetia_dwidharma."public".sale_order_line.id AS order_line_id, prasetia_dwidharma."public".project_document_bast_template.name AS binder_name FROM { oj { oj prasetia_dwidharma."public".project_document_bast LEFT OUTER JOIN prasetia_dwidharma."public".project_document_bast_template ON prasetia_dwidharma."public".project_document_bast.name = prasetia_dwidharma."public".project_document_bast_template.id } LEFT OUTER JOIN prasetia_dwidharma."public".sale_order_line ON prasetia_dwidharma."public".project_document_bast.project_id = prasetia_dwidharma."public".sale_order_line.project_id } WHERE (prasetia_dwidharma."public".sale_order_line.id = ?) AND (prasetia_dwidharma."public".project_document_bast_template.binder_id =3)'
        UpdateCommand='UPDATE prasetia_dwidharma."public".project_document_bast SET status = ?, mandatory = ? WHERE (id = ?)'>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="305" Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>            
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="mandatory" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
