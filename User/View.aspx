<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
    }
        .style8
    {
        color: #FF6600;
    }
    .style9
    {
        font-size: large;
    }
    .style10
    {
        width: 256px;
    }
    </style>
    <script type="text/javascript">
        function img(i) {

            var imgg = document.getElementById('<%=Image3.ClientID%>');
            imgg.src = i.src;

        }
    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">

     <tr>
            <td class="tblhead" colspan="2">
               

                Item Detail</td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Image ID="Image3" runat="server" Height="282px" Width="285px" 
                    CssClass="vimg" />
            </td>
            <td valign="top" rowspan="2" 
                
                style="border-left-style: solid; border-left-width: thin; border-left-color: #C0C0C0" 
                bgcolor="#D8F5D8">
                <span class="style8"><span class="style9">&nbsp;&nbsp; Item Name : </span>
                </span><span class="style9">
                <asp:Label ID="lblname" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <span class="style9"><span class="style8">&nbsp;&nbsp;
                Item Price :
                </span>
                <asp:Label ID="lblprice" runat="server" CssClass="style8"></asp:Label>
                <br class="style8" />
                <br class="style8" />
                <span class="style8">&nbsp;&nbsp;
                Item Quntity :
                </span>
                <asp:Label ID="lblqnt" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <span class="style9">
                <span class="style8">&nbsp;&nbsp; Item Size :
                </span>
                <asp:Label ID="lblqnt0" runat="server" CssClass="style8"></asp:Label>
                </span>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                Detail : 
                <asp:Label ID="lbldetil" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" CssClass="btn" onclick="Button3_Click" 
                    Text="Add to Cart" Width="120px" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="80px" Width="70px"  
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg" />
                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" Height="80px" Width="70px" 
                                onmouseover="img(this)" CssClass="vimg"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselecting="SqlDataSource1_Selecting" 
                    SelectCommand="SELECT [Image] FROM [ItemMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="7" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" Width="436px">
                    <ItemTemplate>
                        &nbsp;<asp:Image ID="Image7" runat="server" Height="60px" 
                            ImageUrl='<%# Eval("Image") %>' Width="55px" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

