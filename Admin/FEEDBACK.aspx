<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="FEEDBACK.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
    <tr>
        <td class="tblhead">
            FeedBack Report</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [UNAME], [MESSAGE], [ENTRYDATE] FROM [Feedbackmstr]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="UNAME" HeaderText="UNAME" SortExpression="UNAME" />
                    <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" 
                        SortExpression="MESSAGE" />
                    <asp:BoundField DataField="ENTRYDATE" HeaderText="ENTRYDATE" 
                        SortExpression="ENTRYDATE" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
               
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

