<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Database_Products._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1 style="text-align:center">Электронный паспорт изделия</h1>
    </div>
    <div style="text-align:center; width: 100%; margin: 0 auto;">
        <asp:GridView ID="ProductTable" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Number" HeaderText="Номер изделия" />
                <asp:BoundField DataField="Serie" HeaderText="Серия" />
                <asp:BoundField DataField="ProduceDate" DataFormatString="{0:d}" HeaderText="Дата производства" />
                <asp:BoundField DataField="SaleDate" DataFormatString="{0:d}" HeaderText="Дата продажи" />
                <asp:BoundField DataField="Prise" HeaderText="Цена изделия" />
                <asp:BoundField DataField="SailorName" HeaderText="ФИО продавца" />
                <asp:TemplateField HeaderText="Регламентные работы">
                    <ItemTemplate>
                        <a href="MaintenanceWorksEdit.aspx?ProductId=<%# Eval("Id") %>">Упраление</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
