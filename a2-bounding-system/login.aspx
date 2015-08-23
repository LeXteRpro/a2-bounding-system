<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="a2_bounding_system.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Login</h1>

        <div class="login">
        <asp:label id="lblError" runat="server" cssclass="label label-danger" />
    </div>
         <fieldset>
        <label for="txtUserName" class="col-sm-2">Username: </label>
        <asp:TextBox ID="txtUsername" runat="server" MaxLength="50" />
    </fieldset>
    <fieldset>
        <label for="txtPassword" class="col-sm-2">Password: </label>
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="50" />
    </fieldset>
    <div class="col-sm-2">
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primaary" 
           OnClick="btnSubmit_Click" />
    </div>

</asp:Content>
