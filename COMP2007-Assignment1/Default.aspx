<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    MasterPageFile="~/MasterPages/FrontEnd.Master" UnobtrusiveValidationMode="None" Inherits="COMP2007_Assignment1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Calculator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron" style="background-image:url(/Assets/back.jpg); background-size:cover;">
        <div class="container">
            <h1>Game Calculator</h1>
        </div>
        <!--Container -->
    </div>
    <!--jumbotron -->

    <div class="container">
        <!-- Example row of columns -->
        <div class="row jumbotron">
            <!-- Game 1 -->
            <div class="col-md-3">

                <h2>Game 1</h2>
                <div>
                    <!-- Radio Buttons for the Win and Loss Selection with the validations -->
                    <asp:Label ID="resultLabel1" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" CssClass="text-danger" Display="Dynamic" ErrorMessage="Invalid Selection" runat="server"> </asp:RequiredFieldValidator>
                </div>

                <!-- Created Point Scored Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="pointsLabels1" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorScore1" ControlToValidate="pointScored1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScore1" ControlToValidate="pointScored1" CssClass="text-danger" Display="Dynamic" MinimumValue="0" MaximumValue="2147483647" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created the Compare validator to check whether Points Scored and Allowed are not same -->
                <div class="alert-warning text-warning">
                    <asp:CompareValidator ID="CompareValidator1" ControlToCompare="pointsAllowed1" ControlToValidate="pointScored1" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>

                <!-- Created Point Allowed Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="ptsAllowedLabel1" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed1" ControlToValidate="pointsAllowed1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed1" ControlToValidate="pointsAllowed1" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Points Allowed should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created Spectator Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="spectatorLabel1" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator1" ControlToValidate="sptTextbox1" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Number of Spectators"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator1" ControlToValidate="sptTextbox1" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectator should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- col-md-3 -->
            </div>

            <!-- Game 2 -->
            <div class="col-md-3 ">

                <h2>Game 2</h2>
                <div>
                    <!-- Radio Buttons for the Win and Loss Selection with the validations -->
                    <asp:Label ID="resultLabel2" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList2" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="RadioButtonList2" CssClass="text-danger" Display="Dynamic" ErrorMessage="Invalid Selection" runat="server"> </asp:RequiredFieldValidator>
                </div>

                <!-- Created Point Scored Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="pointsLabels2" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored2" ControlToValidate="pointScored2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored2" ControlToValidate="pointScored2" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created the Compare validator to check whether Points Scored and Allowed are not same -->
                <div class="alert-warning text-warning">
                    <asp:CompareValidator ID="CompareValidator2" ControlToCompare="pointsAllowed2" ControlToValidate="pointScored2" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>

                <!-- Created Point Allowed Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="ptsAllowedLabel2" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoAllowed2" ControlToValidate="pointsAllowed2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed2" ControlToValidate="pointsAllowed2" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Points Allowed should be greater than 0"></asp:RangeValidator>

                </div>

                <!-- Created Spectator Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="spectatorLabel2" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator2" ControlToValidate="sptTextbox2" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Of Spectators"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator2" ControlToValidate="sptTextbox2" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectators should be greater than 0"></asp:RangeValidator>

                </div>
            </div>
            <!-- col-md-3 -->

            <!-- Game 3 -->
            <div class="col-md-3">

                <h2>Game 3</h2>
                <div>
                    <!-- Radio Buttons for the Win and Loss Selection with the validations -->
                    <asp:Label ID="resultLabel3" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList3" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="RadioButtonList3" CssClass="text-danger" Display="Dynamic" ErrorMessage="Invalid Selection" runat="server"> </asp:RequiredFieldValidator>
                </div>

                <!-- Created Point Scored Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="pointsLabels3" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored3" ControlToValidate="pointScored3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored3" ControlToValidate="pointScored3" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>

                </div>

                <!-- Created the Compare validator to check whether Points Scored and Allowed are not same -->
                <div class="alert-warning text-warning">
                    <asp:CompareValidator ID="CompareValidator3" ControlToCompare="pointsAllowed3" ControlToValidate="pointScored3" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>

                <!-- Created Point Allowed Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="ptsAllowedLabel3" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed3" ControlToValidate="pointsAllowed3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed" ControlToValidate="pointsAllowed3" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Points Allowed should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created Spectator Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="spectatorLabel3" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator3" ControlToValidate="sptTextbox3" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Of Spectators"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator3" ControlToValidate="sptTextbox3" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectators should be greater than 0"></asp:RangeValidator>

                </div>
            </div>
            <!-- col-md-3 -->

            <!-- Game 4 -->
            <div class="col-md-3">

                <h2>Game 4</h2>
                <div>
                    <!-- Radio Buttons for the Win and Loss Selection with the validations -->
                    <asp:Label ID="resultLabel4" runat="server" Text="Label"><strong>Result 1:</strong></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList4" CssClass="radio-inline" runat="server">
                        <asp:ListItem Value="1">Win</asp:ListItem>
                        <asp:ListItem Value="0">Loss</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="RadioButtonList4" CssClass="text-danger" Display="Dynamic" ErrorMessage="Invalid Selection" runat="server"> </asp:RequiredFieldValidator>
                </div>

                <!-- Created Point Scored Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="pointsLabels4" runat="server" Text="Label"><strong>Points Scored:</strong></asp:Label>
                    <asp:TextBox ID="pointScored4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorScored4" ControlToValidate="pointScored4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Scored"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorScored4" ControlToValidate="pointScored4" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Scores should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created the Compare validator to check whether Points Scored and Allowed are not same -->
                <div class="alert-warning text-warning">
                    <asp:CompareValidator ID="CompareValidator4" ControlToCompare="pointsAllowed4" ControlToValidate="pointScored4" Display="Dynamic" ErrorMessage="Points Scored and Points Allowed must be different." Operator="NotEqual" runat="server"></asp:CompareValidator>
                </div>

                <!-- Created Point Allowed Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="ptsAllowedLabel4" runat="server" Text="Label"><strong>Points Allowed:</strong></asp:Label>
                    <asp:TextBox ID="pointsAllowed4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAllowed4" ControlToValidate="pointsAllowed4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Points Allowed"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAllowed4" ControlToValidate="pointsAllowed4" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Points Allowed should be greater than 0"></asp:RangeValidator>
                </div>

                <!-- Created Spectator Label and TextBox with the required field and range validator  -->
                <div>
                    <asp:Label ID="spectatorLabel4" runat="server" Text="Label"><strong>Spectator:</strong></asp:Label>
                    <asp:TextBox ID="sptTextbox4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSpectator4" ControlToValidate="sptTextbox4" CssClass="text-danger" Display="Dynamic" runat="server" ErrorMessage="Enter Of Spectators"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorSpectator4" ControlToValidate="sptTextbox4" CssClass="text-danger" Display="Dynamic" MaximumValue="2147483647" MinimumValue="0" Type="Integer" runat="server" ErrorMessage="Spectators should be greater than 0"></asp:RangeValidator>

                </div>

            </div>
            <!-- col-md-3 -->
        </div>
        <!-- row -->

        <div class="text-center">
            <asp:Button ID="SummaryButton" runat="server" class="btn btn-primary btn-lg" Text="Summary" OnClick="SummaryButton_Click" />
        <asp:Button ID="ClearButton" runat="server" class="btn btn-primary btn-lg" Text="Clear" OnClick="ClearButton_Click" />
        </div>
        <br />

    </div>
    <!-- container -->
    <div class="container jumbotron well" id="summary" runat="server" visible="false">
        <h2>Summary:</h2>
        <!-- Labels for the summary of the game -->
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
