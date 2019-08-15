<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddQuantity.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 239px;
        }
        .style9
        {
            width: 73px;
        }
        .style13
        {
            width: 239px;
            color: blue;
        }
        .style15
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 256px; width: 101%">
    <tr>
        <td colspan="2" class="tblhead">
            ADD QUANTITY PAGE</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Select Item:</td>
        <td align="LEFT">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                DataSourceID="SqlDataSource1" DataTextField="IName" DataValueField="Qnt">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ADD Quantity:</td>
        <td style="text-align: left"  >
            <asp:TextBox ID="txtquan" runat="server" placeholder="Enter Quantity!!!" 
                CssClass="txt" Width="100px" ontextchanged="txtquan_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtquan" ErrorMessage="Enter Quantity" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                Text="ADD " Width="70px" Height="30px" />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                onselecting="SqlDataSource1_Selecting" 
                SelectCommand="SELECT [IName], [Qnt], [AQnt], [SQnt] FROM [ItemMst]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td style="text-align: left" align="left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" Width="645px" DataSourceID="SqlDataSource1" 
                DataKeyNames="IName">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="IName" HeaderText="IName" 
                        SortExpression="IName" ReadOnly="True" />
                    <asp:BoundField DataField="Qnt" HeaderText="Qnt" 
                        SortExpression="Qnt" />
                    <asp:BoundField DataField="AQnt" HeaderText="AQnt" 
                        SortExpression="AQnt" />
                    <asp:BoundField DataField="SQnt" HeaderText="SQnt" 
                        SortExpression="SQnt" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                
            </asp:GridView>
        </td>
    </tr>
    </table>
</asp:Content>

