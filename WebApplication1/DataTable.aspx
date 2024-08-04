<%@ Page Title="DataTable" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataTable.aspx.cs" Inherits="WebApplication1.DataTable" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        h2,h4{
            margin-top:10px;
        }
        #DataList-container{
            margin-top:20px;
        }
        #DataGrid-container{
            margin-top:25px;
        }
        #btn-container{
            margin-top:30px;
        }
        .submit-btn{
            border:none;
            padding:7px 7px;
            cursor:pointer;
            color:azure;
            background-color:#1f1f1f;
            /*float:right;*/
        }
        tr,td{
            border:1px solid #000000;
        }
        th{
            border:1px solid #ffffff;
        }
        td{
            padding:5px 5px;
            text-align:center;
        }
        th{
            padding:7px 5px;
            text-align:center;
        }
        #Grid-head{
            margin-top:20px;
        }
        .GridViewRows td{
            padding:8px 8px;
        }
    </style>

    <h2>Creating DataTable</h2>
    <h4>Below Is The Example Of DataList</h4>
    <div id="DataList-container">

        <asp:DataList ID="DataList01" runat="server">
            <ItemTemplate>    <%--Table has to put inside ItemTemplate--%>
                <table>
                    <tr>
                        <td><span style="font-weight:bold;">Id:- </span><%# Eval("Id") %></td>
                        <td><span style="font-weight:bold;">Name:- </span><%# Eval("Name") %></td>
                        <td><span style="font-weight:bold;">Email:- </span><%# Eval("Email") %></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>

    <h4 id="Grid-head">Below Is The Example Of DataGrid</h4>
    <div id="DataGrid-container">
        <asp:GridView ID="DataGrid01" runat="server" CssClass="GridViewRows">
            <HeaderStyle BackColor="#1a75ff" ForeColor="White" Font-Size="Medium" Font-Bold="true" />
        </asp:GridView>
    </div>

    <div id="btn-container">
        <asp:Button  ID="Button1" Text="Submit" runat="server" CssClass="submit-btn" OnClick="GetDataTable" />
    </div>

</asp:Content>


