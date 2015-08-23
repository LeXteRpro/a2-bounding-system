<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="a2_bounding_system.register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Register</h1>

    <fieldset>
        <label for="txtBoundName" class="col-sm-2">Bound Name (Username)*</label>
        <asp:TextBox ID="txtBoundName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtBoundName" runat="server" ControlToValidate="txtBoundName" Display="Dynamic"/>
    </fieldset>

    <fieldset>
        <label for="txtFirstName" class="col-sm-2">First Name</label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    </fieldset>

    <fieldset>
        <label for="txtLastName" class="col-sm-2">Last Name</label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </fieldset>
    <br />
    <fieldset>
        <label for="txtServer" class="col-sm-2">Server</label>
        <asp:TextBox ID="txtServer" runat="server"></asp:TextBox>
    </fieldset>

    <br />

<%--    <fieldset>
        <label for="RadioButtonGender" class="col-sm-2">Gender*</label>
        <asp:RadioButtonList ID="RadioButtonGender" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </fieldset>--%>

    <fieldset>
        <label for="txtAge" class="col-sm-2">Age*</label>
        <asp:TextBox ID="txtAge" runat="server" Type="number" Width="50px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age Required"
            Display="Dynamic" Type="Integer" MinimumValue="0" MaximumValue="200">
        </asp:RequiredFieldValidator>
    </fieldset>

    <fieldset>
        <label for="DropDownCountry" class="col-sm-2">Country*</label>
          <asp:DropDownList ID="DropDownCountry" runat="server"> 
            <asp:ListItem Value="1">Countries</asp:ListItem>
            <asp:ListItem Value="">Canada</asp:ListItem>
            <asp:ListItem Value="">USA</asp:ListItem>
            <asp:ListItem Value="">Europe</asp:ListItem>
            <asp:ListItem Value="">Australia</asp:ListItem>
        </asp:DropDownList>
    </fieldset>

    <fieldset>
        <label for="txtEmail" class="col-sm-2">Email*</label>
        <asp:TextBox ID="txtEmail" runat="server" MaxLength="75" />
    </fieldset>

    <fieldset>
        <label for="txtPassword" class="col-sm-2">Password*</label>
        <asp:TextBox ID="txtPassword" runat="server" MaxLength="75" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required"
            Display="Dynamic" />
    </fieldset>
        <label for="txtConfirmPassword" class="col-sm-2">Confirm Password*</label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" MaxLength="75" TextMode="Password" />
        <asp:CompareValidator runat="server" ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword"
         CssClass="label label-danger" ErrorMessage="Passwords must match" Operator="Equal" />

    <div class="col-sm-offset-2">
        <asp:Button ID="btnRegister" runat="server" Text="Submit" CssClass="btn btn-primary"
            OnClick="btnSubmit_Click" />
    </div>


</asp:Content>
