<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bound-archive.aspx.cs" Inherits="a2_bounding_system.bound_archive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Bound Archive</h1>

    <asp:GridView ID="grdBoundArchive" runat="server" CssClass="table table striped table-hover" AutoGenerateColumns="false" 
          OnRowDeleting="grdBoundArchive_RowDeleting" DataKeyNames="bound_id">

        <Columns>
            <asp:BoundField DataField="bound_id" HeaderText="Bound ID" />
            <asp:BoundField DataField="bound_name" HeaderText="Title" />
            <asp:BoundField DataField="bound_difficulty" HeaderText="Difficulty" />
            <asp:BoundField DataField="bound_obstacles" HeaderText="Obstacles" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="bound-archive.aspx" 
                DataNavigateUrlFields="bound_id" DataNavigateUrlFormatString="submit-bound.aspx?BoundID={0}" />

             <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" />

        </Columns>

        </asp:GridView>

</asp:Content>
