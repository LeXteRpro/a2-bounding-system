<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="replay-archive.aspx.cs" Inherits="a2_bounding_system.replay_archive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Replay Archive</h1>

        <asp:GridView ID="grdReplayArchive" runat="server" CssClass="table table striped table-hover" AutoGenerateColumns="false" 
          OnRowDeleting="grdReplayArchive_RowDeleting" DataKeyNames="ReplayID">

        <Columns>
            <asp:BoundField DataField="ReplayID" HeaderText="Replay ID" />
            <asp:BoundField DataField="ReplayTitle" HeaderText="Title" />
            <asp:BoundField DataField="ReplayPlayers" HeaderText="Player Slots" />
            <asp:BoundField DataField="ReplayDifficulty" HeaderText="Difficulty" />
            <asp:BoundField DataField="ReplayObstacles" HeaderText="Obstacles" />
            <asp:BoundField DataField="ReplayUploadFile" HeaderText="Upload File" />
            <asp:HyperLinkField HeaderText="Edit" Text="Edit" NavigateUrl="replay-archive.aspx" 
                DataNavigateUrlFields="ReplayID" DataNavigateUrlFormatString="replay-archive.aspx?ReplayID={0}" />

             <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" />

        </Columns>

        </asp:GridView>

</asp:Content>
