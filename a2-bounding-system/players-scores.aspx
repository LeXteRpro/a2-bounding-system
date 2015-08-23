<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="players-scores.aspx.cs" Inherits="a2_bounding_system.players" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Players</h1>

        <asp:GridView ID="grdPlayers" runat="server" CssClass="table table striped table-hover" AutoGenerateColumns="false" 
          OnRowDeleting="grdPlayers_RowDeleting" DataKeyNames="PlayerID">

        <Columns>
            <asp:BoundField DataField="PlayerID" HeaderText="Player ID" />
            <asp:BoundField DataField="online_name" HeaderText="Name" />
            <asp:BoundField DataField="country" HeaderText="Country" />
            <asp:BoundField DataField="total_points" HeaderText="Total Points" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="players.aspx" 
                DataNavigateUrlFields="PlayerID" DataNavigateUrlFormatString="players.aspx?PlayerID={0}" />

             <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>

</asp:Content>
