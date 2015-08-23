<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="submit-bound.aspx.cs" Inherits="a2_bounding_system.submit_file" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Submit Bound</h1>

    <fieldset>
        <label for="txtBoundName" class="col-sm-2">Bound Name*</label>
        <asp:TextBox ID="txtBoundName" runat="server" MaxLength="75" />
        <asp:RequiredFieldValidator ID="txtBoundNameRequiredValidator" runat="server" ControlToValidate="txtBoundName" ErrorMessage="Bound Name Required" 
            Type="text" MinimumValue="0" MaximumValue="999999"  Display="Dynamic"></asp:RequiredFieldValidator>

    </fieldset>
    <fieldset>
        <label for="BoundDifficulty" class="col-sm-2">Bound Difficulty</label>
        <asp:DropDownList ID="DropDownBoundDifficulty" runat="server" Width="100px">
            <asp:ListItem Value="-1">Difficulty</asp:ListItem>
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>

        </asp:DropDownList>
    </fieldset>
        <label for="txtObstacles" class="col-sm-2">Obstacles </label>
        <asp:TextBox ID="BoundObstacles" runat="server" required="" type="number" Width="100px" >1</asp:TextBox>
         <asp:RangeValidator ID="BoundObstacleValidator" runat="server" ControlToValidate="BoundObstacles" type="Integer" MinimumValue="1" MaximumValue="99999" ErrorMessage=" Must be greater than 0" Display="Dynamic"></asp:RangeValidator>


<%--    <fieldset>
        <label for="UploadFile" class="col-sm-2">Upload File</label>
        <asp:FileUpload ID="UploadFile" runat="server" />
        <!--<asp:RequiredFieldValidator ID="UploadFileValidator" runat="server" ErrorMessage="Bound Name Required" 
            ControlToValidate="UploadFile" Display="Dynamic"></asp:RequiredFieldValidator>-->
    </fieldset>--%>

    <div class="col-sm-offset-2">
         <asp:Button ID="BoundSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" 
             OnClick="BoundSubmit_Click" />
    </div>

    <asp:GridView ID="grdBoundArchive" runat="server" AutoGenerateColumns="false"
        DataKeyNames="BoundID" CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="Bound" HeaderText="Bound" />
            <asp:BoundField DataField="Difficulty" HeaderText="Difficulty" />
            <asp:BoundField DataField="Obstacles" HeaderText="Obstacles" />

            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
        </Columns>
    </asp:GridView>

</asp:Content>
