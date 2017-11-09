<telerik:RadStyleSheetManager runat="server"></telerik:RadStyleSheetManager>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContohBAST.aspx.cs" Inherits="ERPProjectControl.ContohBAST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="scriptManager" runat="server"></telerik:RadScriptManager>
        <telerik:RadAjaxManager ID="ajaxManager" runat="server">
            <AjaxSettings>
                <telerik:AjaxSetting AjaxControlID="gridBastProject">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="gridBastProject" LoadingPanelID="ajaxLoadingPanel" UpdatePanelCssClass=""></telerik:AjaxUpdatedControl>
                    </UpdatedControls>
                </telerik:AjaxSetting>
            </AjaxSettings>
        </telerik:RadAjaxManager>
        <telerik:RadAjaxLoadingPanel ID="ajaxLoadingPanel" runat="server" Skin="Bootstrap"></telerik:RadAjaxLoadingPanel>
        <div class="container">
            <div class="row">
                <h1>Sample</h1>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <telerik:RadGrid ID="gridBastProject" runat="server" DataSourceID="sqlDataSourceBastProject" CellSpacing="-1"
                        Skin="Bootstrap" AllowFilteringByColumn="false" AllowSorting="True" Width="100%" AllowAutomaticUpdates="True">
                        <MasterTableView DataKeyNames="id" DataSourceID="sqlDataSourceBastProject" 
                            AutoGenerateColumns="False" EditMode="Batch"
                            CommandItemDisplay="TopAndBottom">
                            <CommandItemSettings ShowAddNewRecordButton="False"></CommandItemSettings>
                            <BatchEditingSettings EditType="Row" />
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
                            <EditFormSettings EditFormType="Template">
                                <FormTemplate>
                                    <div class="col-md-12">
                                        <div class="col-md-6">
                                            status : <br />
                                            <telerik:RadComboBox RenderMode="Lightweight"
                                                runat="server" ID="StatusDropDown"
                                                SelectedText="Available" SelectedValue='<%# Bind("status") %>'
                                                EmptyMessage="-- Please Select --">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Selected="True" Text="Available" Value=1></telerik:RadComboBoxItem>
                                                    <telerik:RadComboBoxItem runat="server" Text="N/A" Value=0></telerik:RadComboBoxItem>
                                                </Items>
                                            </telerik:RadComboBox>
                                            <%--<asp:TextBox ID="TextBoxStatus" Text='<%# Bind("status") %>' runat="server"></asp:TextBox>--%>
                                        </div>
                                        <div class="col-md-6">
                                            mandatory : <br />
                                            <telerik:RadComboBox RenderMode="Lightweight"
                                                runat="server" ID="MandatoryDropDown"
                                                SelectedText="Available" SelectedValue='<%# Bind("mandatory") %>'
                                                EmptyMessage="-- Please Select --">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Selected="True" Text="Available" Value=1></telerik:RadComboBoxItem>
                                                    <telerik:RadComboBoxItem runat="server" Text="N/A" Value=0></telerik:RadComboBoxItem>
                                                </Items>
                                            </telerik:RadComboBox>
                                        </div>
                                        <div class="row">
                                            <hr />
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Button ID="btnUpdate" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                                                    runat="server" CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'></asp:Button>&nbsp;
                                                <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False"
                                                    CommandName="Cancel"></asp:Button>
                                            </div>
                                        </div>
                                    </div>
                                </FormTemplate>
                            </EditFormSettings>
                        </MasterTableView>
                    </telerik:RadGrid>
                </div>
            </div>

        </div>
    </form>
    <asp:SqlDataSource ID="sqlDataSourceBastProject" runat="server"
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
</body>
</html>
