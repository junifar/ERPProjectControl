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
            Dashboard
            <small>Control panel - periode <asp:Label ID="labelTahun" runat="server" /></small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Home</li>
        </ol>
    </section>
    <section class="content container">
        <div class="row">
        </div>
    </section>
</asp:Content>
