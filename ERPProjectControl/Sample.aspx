<%@ Page Title="" Language="C#" MasterPageFile="~/Main-blue.Master" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="ERPProjectControl.Sample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadMaster" runat="server">
    <style>
        .RadGrid_Metro .rgHeader a {
            color: #ffffff !important;
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
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager2" runat="server">
    </telerik:RadStyleSheetManager>
    <telerik:RadScriptManager ID="RadScriptManager2" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>
    <telerik:RadAjaxManager ID="RadAjaxManager2" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="GridSample">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GridSample" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="GridBastProject">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="GridBastProject" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
        <AjaxSettings>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Metro"></telerik:RadAjaxLoadingPanel>
    <section class="content-header container">
        <h1>Purchase Order
            <small>Details</small>
        </h1>
        <ol class="breadcrumb">
            <li class="active">Purchase Order</li>
        </ol>
    </section>
    <section class="content container">
        <telerik:RadGrid ID="GridSample" runat="server" DataSourceID="Test" AutoGenerateEditColumn="false" AllowAutomaticInserts="True" AllowAutomaticUpdates="True" AllowMultiRowEdit="True">

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
        <%--<telerik:RadAjaxPanel runat="server" ID="ajax1">--%>
        <telerik:RadGrid ID="GridBastProject" runat="server" DataSourceID="sqlDataSourceProjectDocumentBAST" AutoGenerateEditColumn="False" AllowAutomaticUpdates="True" EnableHeaderContextMenu="True">
            <MasterTableView DataKeyNames="id" DataSourceID="sqlDataSourceProjectDocumentBAST"
                AutoGenerateColumns="False" EnableHeaderContextMenu="False"
                EditMode="EditForms">
                <Columns>
                    <telerik:GridBoundColumn DataField="id" ReadOnly="True" HeaderText="id" SortExpression="id" UniqueName="id" DataType="System.Int32" FilterControlAltText="Filter id column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="create_uid" HeaderText="create_uid" SortExpression="create_uid" UniqueName="create_uid" DataType="System.Int32" FilterControlAltText="Filter create_uid column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="create_date" HeaderText="create_date" SortExpression="create_date" UniqueName="create_date" DataType="System.DateTime" FilterControlAltText="Filter create_date column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="write_date" HeaderText="write_date" SortExpression="write_date" UniqueName="write_date" DataType="System.DateTime" FilterControlAltText="Filter write_date column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="write_uid" HeaderText="write_uid" SortExpression="write_uid" UniqueName="write_uid" DataType="System.Int32" FilterControlAltText="Filter write_uid column"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="project_id" HeaderText="project_id" SortExpression="project_id" UniqueName="project_id" FilterControlAltText="Filter project_id column" DataType="System.Int32"></telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="name" HeaderText="name" SortExpression="name" UniqueName="name" DataType="System.Int32" FilterControlAltText="Filter name column"></telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn HeaderText="Status" HeaderStyle-Width="150px" UniqueName="Status" DataField="status">
                        <ItemTemplate>
                            <div runat="server" visible='<%# Eval("status").ToString() == "1" %>'>
                                Available
                            </div>
                            <div runat="server" visible='<%# Eval("status").ToString() != "1" %>'>
                                N/A
                            </div>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadDropDownList RenderMode="Lightweight" runat="server" ID="StatusDropDown"
                                SelectedValue='<%# Bind("status") %>'
                                EmptyMessage="-- Please Select --">
                                <Items>
                                    <telerik:DropDownListItem runat="server" Selected="True" Text="Available" Value="1"></telerik:DropDownListItem>
                                    <telerik:DropDownListItem runat="server" Text="N/A" Value="0"></telerik:DropDownListItem>
                                </Items>
                            </telerik:RadDropDownList>
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridTemplateColumn HeaderText="Mandatory" HeaderStyle-Width="150px" UniqueName="Mandatory" DataField="mandatory">
                        <ItemTemplate>
                            <div runat="server" visible='<%# Eval("mandatory").ToString() == "1" %>'>
                                Available
                            </div>
                            <div runat="server" visible='<%# Eval("mandatory").ToString() != "1" %>'>
                                N/A
                            </div>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <telerik:RadComboBox RenderMode="Lightweight"
                                runat="server" ID="MandatoryDropDown"
                                SelectedText="Available" SelectedValue='<%# Bind("mandatory") %>'
                                EmptyMessage="-- Please Select --">
                                <Items>
                                    <telerik:RadComboBoxItem runat="server" Selected="True" Text="Available" Value="1"></telerik:RadComboBoxItem>
                                    <telerik:RadComboBoxItem runat="server" Text="N/A" Value="0"></telerik:RadComboBoxItem>
                                </Items>
                            </telerik:RadComboBox>
                        </EditItemTemplate>
                    </telerik:GridTemplateColumn>
                    <telerik:GridEditCommandColumn ItemStyle-CssClass="btn btn-primary"></telerik:GridEditCommandColumn>
                    <%--<telerik:GridDropDownColumn DataField="status" HeaderText="status" UniqueName="status" FilterControlAltText="Filter status column"></telerik:GridDropDownColumn>
                    <telerik:GridDropDownColumn DataField="mandatory" HeaderText="Mandatory" UniqueName="mandatory" FilterControlAltText="Filter mandatory column"></telerik:GridDropDownColumn>--%>
                </Columns>
                <CommandItemTemplate>
                    <div class="col-md-12">
                        <asp:Button ID="btnUpdate" CssClass="btn btn-primary" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                        runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'></asp:Button>&nbsp;
                        <asp:Button ID="btnCancel" CssClass="btn btn-primary" Text="Cancel" runat="server" CausesValidation="False"
                            CommandName="Cancel"></asp:Button>
                    </div> 
                </CommandItemTemplate>
               <%-- <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Update</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group col-md-12">
                                                    <asp:Label Text="Mandatory" runat="server" For="MandatoryDropDown" /><br />
                                                    <telerik:RadComboBox RenderMode="Lightweight"
                                                        runat="server" ID="MandatoryDropDown"
                                                        SelectedText="Available" SelectedValue='<%# Bind("mandatory") %>'
                                                        EmptyMessage="-- Please Select --" Skin="Bootstrap" Width="100%">
                                                        <Items>
                                                            <telerik:RadComboBoxItem runat="server" Selected="True" Text="Available" Value="1"></telerik:RadComboBoxItem>
                                                            <telerik:RadComboBoxItem runat="server" Text="N/A" Value="0"></telerik:RadComboBoxItem>
                                                        </Items>
                                                    </telerik:RadComboBox>
                                                </div>
                                                <div class="form-group col-md-12">
                                                    <asp:Label Text="Status" runat="server" For="StatusDropDown" /><br />
                                                    <telerik:RadComboBox RenderMode="Lightweight"
                                                        runat="server" ID="StatusDropDown"
                                                        SelectedText="Available" SelectedValue='<%# Bind("status") %>'
                                                        EmptyMessage="-- Please Select --" Skin="Bootstrap" Width="100%">
                                                        <Items>
                                                            <telerik:RadComboBoxItem runat="server" Selected="True" Text="Available" Value="1"></telerik:RadComboBoxItem>
                                                            <telerik:RadComboBoxItem runat="server" Text="N/A" Value="0"></telerik:RadComboBoxItem>
                                                        </Items>
                                                    </telerik:RadComboBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Button ID="btnUpdate" CssClass="btn btn-primary" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                                                    runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'></asp:Button>&nbsp;
                                                <asp:Button ID="btnCancel" CssClass="btn btn-primary" Text="Cancel" runat="server" CausesValidation="False"
                                                    CommandName="Cancel"></asp:Button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </FormTemplate>
                </EditFormSettings>--%>
            </MasterTableView>
        </telerik:RadGrid>
        <%--</telerik:RadAjaxPanel>--%>
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
    <asp:SqlDataSource ID="sqlDataSourceProjectDocumentBAST" runat="server"
        ConnectionString='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString %>' DeleteCommand="DELETE FROM [project_document_bast] WHERE [id] = ?"
        InsertCommand="INSERT INTO [project_document_bast] ([id], [create_uid], [create_date], [write_date], [write_uid], [status], [project_id], [mandatory], [name]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName='<%$ ConnectionStrings:PrasetiaDwidharmaConnectionString.ProviderName %>'
        SelectCommand='SELECT id, create_uid, create_date, write_date, write_uid, status, project_id, mandatory, name FROM prasetia_dwidharma."public".project_document_bast'
        UpdateCommand="UPDATE project_document_bast SET create_uid = ?, create_date = ?, write_date = ?, write_uid = ?, status = ?, project_id = ?, mandatory = ?, name = ? WHERE id = ?">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="create_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="create_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="project_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="mandatory" Type="String"></asp:Parameter>
            <asp:Parameter Name="name" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="create_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="create_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="write_uid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="status" Type="String"></asp:Parameter>
            <asp:Parameter Name="project_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="mandatory" Type="String"></asp:Parameter>
            <asp:Parameter Name="name" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
