<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="submit-replay.aspx.cs" Inherits="a2_bounding_system.submit_replay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Submit Replay</h1>

    <fieldset>
     <label for="txtReplayName" class="col-sm-2">Replay Name</label>
      <asp:TextBox ID="txtReplayName" runat="server" required="" MaxLength="75" />
        <asp:RequiredFieldValidator ID="ReplayNameRequiredFieldValidator" runat="server" ControlToValidate="txtReplayName" ErrorMessage="Name is Required" Display="Dynamic"></asp:RequiredFieldValidator>
    </fieldset>


    <fieldset>
        <label for="ReplayNumberofPlayers" class="col-sm-2">Number of Players</label>
        <asp:DropDownList ID="ReplayNumberofPlayers" runat="server" required="" Width="100px">
            <asp:ListItem Value="1">Players</asp:ListItem>
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="0">2</asp:ListItem>
            <asp:ListItem Value="0">3</asp:ListItem>
            <asp:ListItem Value="0">4</asp:ListItem>
            <asp:ListItem Value="0">5</asp:ListItem>
            <asp:ListItem Value="0">6</asp:ListItem>
            <asp:ListItem Value="0">7</asp:ListItem>
            <asp:ListItem Value="0">8</asp:ListItem>
        </asp:DropDownList>
    </fieldset>

    <fieldset>
        <label for="txtElapsedTime" class="col-sm-2">Elapsed Time</label>
        <asp:TextBox ID="txtElapsedTime" runat="server" required="" MaxLength="75" />
         <asp:RangeValidator ID="ElapsedTimeRangeValidator" runat="server" ControlToValidate="txtElapsedTime" 
             ErrorMessage="Must be greater than 0" Type="Integer" MinimumValue="0" MaximumValue="99999"  Display="Dynamic" >
         </asp:RangeValidator>
    </fieldset>

     <fieldset>
        <label for="DateComplete" class="col-sm-2">Date Complete</label>
         <asp:Calendar ID="DateComplete" runat="server"></asp:Calendar>
    </fieldset>

     <fieldset>
        <label for="txtObstacles" class="col-sm-2">Obstacles</label>
         <asp:TextBox ID="txtObstacles" runat="server" Type="Number"></asp:TextBox>
         <asp:RangeValidator ID="ObstacleRangeValidator" runat="server" ControlToValidate="txtObstacles" 
             ErrorMessage="Must be greater than 0" Type="Integer" MinimumValue="0" MaximumValue="99999"  Display="Dynamic" >
         </asp:RangeValidator>
    </fieldset>

    <fieldset>
        <label for="UploadFile" class="col-sm-2">Upload File</label>
        <asp:FileUpload ID="UploadFile" runat="server" />
    </fieldset>

    <fieldset>
        <label for="AttachURL" class="col-sm-2">Attach URL</label>
        <br />
        <asp:TextBox ID="AttachURL" runat="server" required="" MaxLength="500" BorderStyle="None" OnTextChanged="AttachURL_TextChanged" Rows="4" TextMode="MultiLine" Width="400px" />
    </fieldset>

     <div class="col-sm-offset-2">
       <asp:Button ID="ReplaySubmit" runat="server" Text="Submit" CssClass="btn btn-primary"
        OnClick="ReplaySubmit_Click" />
     </div>


</asp:Content>
