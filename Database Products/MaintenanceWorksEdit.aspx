<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MaintenanceWorksEdit.aspx.cs" Inherits="Database_Products.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Выполненные регламентные работы для изделия <var></var></h2>
    <div>
        <asp:GridView ID="MaintenanceWorksTable" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Наименование регламентной работы" />
                <asp:BoundField DataField="Date" HeaderText="Дата и время выполнения регламентной работы" />
                <asp:BoundField DataField="WorkersId" HeaderText="Идентификационный номер сервисного инженера" />
            </Columns>
        </asp:GridView>
    </div>
    <br>
    <h2>Добавление регламентной работы</h2>
    <div>
        <table>
            <tr><td>Наименование регламентной работы: </td><td>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox></td></tr>
            <tr><td>Дата выполнения регламентной работы: </td><td style="float:right">
                
                <asp:Calendar ID="Date_date" runat="server"></asp:Calendar></>
            </td></tr>
            <tr><td>Время выполнения регламентной работы: </td><td>
                <asp:TextBox ID="Date_time" runat="server" text="HH:MM" TextMode="DateTime"></asp:TextBox>


            </td></tr>
            <tr><td>Идентификационный номер сервисного инженера: </td><td>
                <asp:TextBox ID="WorkersId" runat="server"></asp:TextBox></td></tr>
            <tr><td colspan="2" style="text-align:right">
                <asp:Button ID="AddMaintenanceWorks" runat="server" Text="Добавить регламентную работу" OnClick="AddMaintenanceWorks_Click" /></td></tr>
        </table>
    </div>

</asp:Content>
