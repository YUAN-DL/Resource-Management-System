﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="borrow.aspx.cs" Inherits="图书管理系统.borrow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 367px;
        }
        .GridViewStyle
        {   
            border-right: 2px solid #A7A6AA;
            border-bottom: 2px solid #A7A6AA;
            border-left: 2px solid white;
            border-top: 2px solid white;
            padding: 4px;
        }
        .GridViewStyle a
        {
            color: #FFFFFF;
        }

        .GridViewHeaderStyle th
        {
            border-left: 1px solid #EBE9ED;
            border-right: 1px solid #EBE9ED;
        }

        .GridViewHeaderStyle
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: White;
        }

        .GridViewFooterStyle
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: White;
        }

        .GridViewRowStyle
        {
            background-color: #F7F6F3;
            color: #333333;
        }

        .GridViewAlternatingRowStyle
        {
            background-color: #FFFFFF;
            color: #284775;
        }

        .GridViewRowStyle td, .GridViewAlternatingRowStyle td
        {
            border: 1px solid #EBE9ED;
        }

        .GridViewSelectedRowStyle
        {
            background-color: #E2DED6;
            font-weight: bold;
            color: #333333;
        }

        .GridViewPagerStyle
        {
            background-color: #284775;
            color: #FFFFFF;
        }

        .GridViewPagerStyle table /**//* to center the paging links*/
        {
            margin: 0 auto 0 auto;
        }
        body {

            background-image: url(./界面设计/wallhaven-96x2e1_1920x1080.png);

            background-size:100% 100%;

            background-repeat: no-repeat;

            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Номер использователи："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="Button1" runat="server" Text="поиск" onclick="Button1_Click1" />
                    
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="ID："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="name："></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Пол："></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ：<asp:TextBox ID="TextBox5" runat="server" 
                        BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:GridView ID="GridView1" runat="server" CssClass="GridViewStyle">
                        <FooterStyle CssClass="GridViewFooterStyle" />
                        <RowStyle CssClass="GridViewRowStyle" />   
                        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                        <PagerStyle CssClass="GridViewPagerStyle" />
                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Номер ресурса："></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Поиск" onclick="Button2_Click" />

                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Номер："></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Название："></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Создатель："></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Описание："></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#CCCCCC" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="URL："></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox11" runat="server" BackColor="#CCCCCC" Enabled="False" 
                        Height="66px" TextMode="MultiLine" Width="472px"></asp:TextBox>
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="получить доступ к этому ресурсу" onclick="Button3_Click" />
     
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" CssClass="GridViewStyle">
                        <FooterStyle CssClass="GridViewFooterStyle" />
                        <RowStyle CssClass="GridViewRowStyle" />   
                        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                        <PagerStyle CssClass="GridViewPagerStyle" />
                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="Выход" onclick="Button7_Click" />
&nbsp;&nbsp;
       
    </p>
    </form>
</body>
</html>
