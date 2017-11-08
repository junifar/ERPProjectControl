<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="ERPProjectControl.Sample" %>
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
            <telerik:AjaxSetting AjaxControlID="GridSample">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GridSample" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
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
            <small>Details</small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Purchase Order</li>
        </ol>
    </section>
    <section class="content container">
        <telerik:RadGrid ID="GridSample" runat="server" DataSourceID="Test" AutoGenerateEditColumn="True" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowMultiRowEdit="True">

            <MasterTableView DataSourceID="Test" AutoGenerateColumns="False" DataKeyNames="id" CommandItemDisplay="TopAndBottom">
                <Columns>
                    <telerik:GridBoundColumn DataField="id" ReadOnly="True" HeaderText="id" SortExpression="id" UniqueName="id" DataType="System.Int32" FilterControlAltText="Filter id column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="create_uid" HeaderText="create_uid" SortExpression="create_uid" UniqueName="create_uid" DataType="System.Int32" FilterControlAltText="Filter create_uid column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="create_date" HeaderText="create_date" SortExpression="create_date" UniqueName="create_date" DataType="System.DateTime" FilterControlAltText="Filter create_date column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="write_date" HeaderText="write_date" SortExpression="write_date" UniqueName="write_date" DataType="System.DateTime" FilterControlAltText="Filter write_date column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="write_uid" HeaderText="write_uid" SortExpression="write_uid" UniqueName="write_uid" DataType="System.Int32" FilterControlAltText="Filter write_uid column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="name" HeaderText="name" SortExpression="name" UniqueName="name" FilterControlAltText="Filter name column"></telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid>
    </section>
    <asp:SqlDataSource ID="Test" runat="server" ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>' SelectCommand='SELECT id, create_uid, create_date, write_date, write_uid, name FROM prasetia_dwidharma."public".project_control_area' UpdateCommand='UPDATE prasetia_dwidharma."public".project_control_area SET create_uid = ?, create_date = ?, write_date = ?, write_uid = ?, name = ? WHERE (id = ?)' DeleteCommand="DELETE FROM project_control_area WHERE id = ?" InsertCommand="INSERT INTO project_control_area (id, create_uid, create_date, write_date, write_uid, name) VALUES (?, ?, ?, ?, ?, ?)">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="create_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="create_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="create_uid" Type="Int32" />
            <asp:Parameter Name="create_date" Type="DateTime" />
            <asp:Parameter Name="write_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="name" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
