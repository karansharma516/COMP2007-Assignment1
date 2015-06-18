using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Assignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SummaryButton_Click(object sender, EventArgs e)
        {
            int totalWon = 0;
            int totalLoss = 0;
            // calculating the number of won and loss for game 1
            if (RadioButtonList1.SelectedValue == "1")
            {
                totalWon++;
            }
            else
            {
                totalLoss++;
            }
            // calculating the number of wons and loss for game 2
            if (RadioButtonList2.SelectedValue == "1")
            {
                totalWon++;
            }
            else
            {
                totalLoss++;
            }
            // calculating the number of wons and loss for game 3
            if (RadioButtonList3.SelectedValue == "1")
            {
                totalWon++;
            }
            else
            {
                totalLoss++;
            }
            // calculating the number of wons and loss for game 4
            if (RadioButtonList4.SelectedValue == "1")
            {
                totalWon++;
            }
            else
            {
                totalLoss++;
            }
            // total number of games won
            labelWon.Text = totalWon.ToString();

            // displaying total number of game loss
            labelLoss.Text = totalLoss.ToString();

            // calculating the per of won
            double winningGame = totalWon/4.0 * 100;

            // displaying a value in %
            labelWinning.Text = winningGame.ToString();
            
            // calculating total points scored
            int totalPointsScored = int.Parse(pointScored1.Text) + int.Parse(pointScored2.Text) + int.Parse(pointScored3.Text) + int.Parse(pointScored4.Text);
            // displaying total points scored
            pointsLabel.Text = totalPointsScored.ToString();
        
            // calculating total points allowed
            int totalPointsAllowed = int.Parse(pointsAllowed1.Text) + int.Parse(pointsAllowed2.Text) + int.Parse(pointsAllowed3.Text) + int.Parse(pointsAllowed4.Text);
            // displaying total points allowed
            pointsAllowed.Text = totalPointsAllowed.ToString();
          
            // calculating total spectator
            int totalSpectator = int.Parse(sptTextbox1.Text) + int.Parse(sptTextbox2.Text) + int.Parse(sptTextbox3.Text) + int.Parse(sptTextbox4.Text);
            // displaying total spectator
            specLabel.Text = totalSpectator.ToString();

            int pointsDifference = totalPointsScored - totalPointsAllowed;

            diffLabel.Text = pointsDifference.ToString();

            //calculate average spectator
            int averageSpectator = totalSpectator/4;

            //Display Average Spectators.
            avgSpecLabel.Text = averageSpectator.ToString();


        }
    }
}