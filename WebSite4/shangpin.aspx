<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shangpin.aspx.cs" Inherits="shangpin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 28px;
        }
        .auto-style6 {
            width: 62px;
        }
        .auto-style7 {
            height: 28px;
            width: 62px;
        }
        .auto-style8 {
            width: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="Ware_Id" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="528px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Ware_Image" ReadOnly="True">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <table style="width: 95%; height: 219px;">
                                    <tr>
                                        <td class="auto-style8">&nbsp;商品名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">&nbsp;价格&nbsp;&nbsp; &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">&nbsp;&nbsp; 编号 &nbsp;</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style6">名字</td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ware_Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">价格</td>
                                        <td class="auto-style5">
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Ware_Price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">编号</td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Ware_Number") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>

