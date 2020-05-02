<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Database_Products.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Добавление нового оборудования</h2>
    <div style="text-align:left; width: 100%; margin: 0 auto;">
        <table>
            <tr><td>Номер изделия: </td>
                <td><asp:TextBox ID="Number" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Серия изделия: </td>
                <td><asp:TextBox ID="Serie" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Дата производства: </td>
                <td style="float:right"><asp:Calendar ID="ProduceDate" runat="server"></asp:Calendar></td>
            </tr>
            <tr><td>Дата продажи: </td>
                <td style="float:right"><asp:Calendar ID="SaleDate" runat="server"></asp:Calendar></td>
            </tr>
            <tr><td>Цена изделия: </td>
                <td><asp:TextBox ID="Prise" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>ФИО продавца: </td>
                <td><asp:TextBox ID="SailorName" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td colspan="2" style="text-align:right"><asp:Button ID="AddNewProduct" runat="server" Text="Добавить" OnClick="AddNewProduct_Click" /></td>
            </tr>
        </table>
    </div>
    
</asp:Content>
