<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    MasterPageFile="~/MasterPages/FrontEnd.Master" Inherits="COMP2007_Assignment1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
        <div class="container">
            <h1>Game Calculator</h1>

        </div>
    </div>

    <div class="container">
        <!-- Example row of columns -->
        <div class="row jumbotron">


            <!-- Game 1 -->
            <div class="col-md-3">

                <h2>Game 1</h2>
                <div>
                    <asp:Label ID="resultLabel1" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <asp:Label ID="pointsLabels1" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="ptsAllowedLabel1" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="spectatorLabel1" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


                <!-- col-md-3 -->
            </div>


            <div class="col-md-3 ">

                <h2>Game 2</h2>
                <div>
                    <asp:Label ID="resultLabel2" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <asp:Label ID="pointsLabels2" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="ptsAllowedLabel2" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="spectatorLabel2" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>
            <!-- col-md-3 -->


            <div class="col-md-3">

                <h2>Game 3</h2>
                <div>
                    <asp:Label ID="resultLabel3" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList3" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <asp:Label ID="pointsLabels3" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="ptsAllowedLabel3" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="spectatorLabel3" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>
            <!-- col-md-3 -->

            <div class="col-md-3">

                <h2>Game 4</h2>
                <div>
                    <asp:Label ID="resultLabel4" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList4" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <asp:Label ID="pointsLabels4" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="ptsAllowedLabel4" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="spectatorLabel4" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <!-- col-md-3 -->
        </div>
        <!-- row -->

        <div class="text-center">
            <asp:Button ID="SummaryButton" runat="server" class="btn btn-primary btn-lg" Text="Summary" OnClick="SummaryButton_Click" />
        </div><br />

    </div>
    <!-- container -->
    <div class="container jumbotron well" id="summary" runat="server" visible="true">
         <h2>Summary:</h2>
        <div>
            <label># of Games won: </label>
            <asp:Label ID="labelWon" runat="server"></asp:Label>
        </div>
         <div>
              <label># of Games lost: </label>
            <asp:Label ID="labelLoss" runat="server"></asp:Label>
        </div>
         <div>
              <label>Winning % :</label>
            <asp:Label ID="labelWinning" runat="server"></asp:Label>
        </div>
          <div>
               <label>Total Points Scored:</label>
            <asp:Label ID="pointsLabel" runat="server"></asp:Label>
        </div>
         <div>
              <label>Total Points Allowed:</label>
            <asp:Label ID="pointsAllowed" runat="server"></asp:Label>
        </div>
         <div>
              <label>Point Differential: </label>
            <asp:Label ID="diffLabel" runat="server"></asp:Label>
        </div>
        <div>
             <label>Total Spectators: </label>
            <asp:Label ID="specLabel" runat="server"></asp:Label>
        </div>
        <div>
             <label>Average Spectators:</label>
            <asp:Label ID="avgSpecLabel" runat="server"></asp:Label>
        </div>

    </div>




</asp:Content>
