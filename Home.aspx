<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="meera.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 600px;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <div>
            <div id="top">
                <div id="logo">
                    <asp:Image id="Image1" runat="server" height="80px" width="226px" 
                        imageurl="~/images/hlogo.png" />
                </div>

                <div id="menu">
                    <a href="Home.aspx" class="mnu1" >HOME</a>
                    <a href="Product.aspx" class="mnu1" >PRODUCT</a>
                    <a href="Feedback.aspx" class="mnu1">FeedBack</a> 
                    <a href="Registration.aspx" class="mnu1">Sign Up</a>   
                    <a href="Login.aspx" class="mnu1">Login</a> 
                    <a href="Contact us.aspx" class="mnu1">Contact Us</a>
                </div>
            </div>
        </div>

        <div id="second">
            <div id="login">
                <table class="tbl">
                    <tr>
                        <td colspan="2" class="tblhead">Login Area</td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:Label ID="lblerror" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label></td>
                    </tr>

                    <tr>
                        <td class="lbl">UserName :</td>
                        <td><asp:TextBox ID="txtuname" runat="server" CssClass="txt" ontextchanged="txtuname_TextChanged"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="lbl">Password :</td>
                        <td><asp:TextBox ID="txtupass" runat="server" CssClass="txt" TextMode="Password" ontextchanged="txtupass_TextChanged"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="left">
                            <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                            onclick="btnlogin_Click" />
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="left">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" 
                            style="color: #006600">New User ??</asp:HyperLink>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td align="left">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FPassword.aspx" 
                            style="color: #006600">Forgot Password !!</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </div>

            <div id="slide">
                <a href="#wows0" title="1">
                <img src="images/barca.jpg" 
                    style="height: 192px; width: 720px"/></a>
		    </div>
            
        
            <div id="main">
                <div id="cate">
                    <table class="tbl">
                        <tr>
                            <td>
                                <table class="tbl">
                                    <tr>
                                        <td class="style1">
                                            <asp:TextBox ID="txtsearch" runat="server" CssClass="txt" Width="100%" 
                                            ontextchanged="txtsearch_TextChanged"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="tblhead">CATEGORY</td>
                        </tr>

                        <tr>
                            <td align="center">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BorderColor="Tan" BorderWidth="1px" ShowHeader="False" 
                                Width="100%" CellPadding="2" ForeColor="Black" GridLines="None" 
                                BackColor="LightGoldenrodYellow" onrowcommand="GridView1_RowCommand" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                DataKeyNames="CName" DataSourceID="SqlDataSource1">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="CName" HeaderText="CName" ReadOnly="True" 
                                    SortExpression="CName" />
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                                <RowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" 
                                Font-Size="Medium" Height="30px" 
                                HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                </asp:GridView>
                              </td>
                            </tr>

                            <tr>
                                <td align="center">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [CName] FROM [CateMst]" 
                                    onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                                </td>
                            </tr>
                        <asp:SqlDataSource 
                    ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Image], [IName], [Price] FROM [ItemMst]" 
                    onselecting="SqlDataSource2_Selecting">
                    </asp:SqlDataSource>
                        </table>
                    </div>
                    
                    <div id="item">
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                        RepeatDirection="Horizontal" Width="100%" 
                        onitemcommand="DataList1_ItemCommand" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                        CellPadding="3" BorderStyle="None" CellSpacing="2" GridLines="Both" 
                        DataKeyField="IName" DataSourceID="SqlDataSource2" Height="331px">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemStyle CssClass="igrid" BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <ItemTemplate>
                            <table class="tbl" >
                                <tr>
                                    <td style="text-align: center">
                                        &nbsp;<asp:Image ID="Image2" runat="server" CssClass="style1" Height="152px" 
                                        ImageAlign="Middle" ImageUrl='<%# Eval("Image") %>' Width="133px" />
                                    </td>
                                </tr>
                    
                                <tr>
                                    <td style="text-align: center">
                                        IName:
                                        <asp:Label ID="INameLabel" runat="server" Text='<%# Eval("IName") %>' 
                                        CssClass="style1"/>
                                    </td>
                                </tr>
                    
                                <tr>
                                    <td style="text-align: center">
                                        Price:
                                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' 
                                        CssClass="style1" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>

                        <SelectedItemStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                        </asp:DataList>
                    </div>
                </div>

                <div id="foot">All Rights Reserved @online Shoes Shop</div>
            </div>
        </form>
  
</body>
</html>
