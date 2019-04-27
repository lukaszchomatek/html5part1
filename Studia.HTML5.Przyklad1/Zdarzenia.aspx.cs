using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studia.HTML5.Przyklad1
{
    public partial class Zdarzenia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void greetButton_Click(object sender, EventArgs e)
        {
            greetResultLabel.Text = "Hello " + whoTextBox.Text + "!";
        }

        protected void btnObliczRadio_Click(object sender, EventArgs e)
        {
            string operation = RadioButtonList1.SelectedValue;
            double first = double.Parse(txtBoxKalkulatorRadioLiczba1.Text);
            double second = double.Parse(txtBoxKalkulatorRadioLiczba2.Text);
            switch (operation)
            {
                case "+":
                    {
                        lblWynikRadio.Text = (first + second).ToString();
                        break;
                    }
                case "-":
                    {
                        lblWynikRadio.Text = (first - second).ToString();
                        break;
                    }
                case "*":
                    {
                        lblWynikRadio.Text = (first * second).ToString();
                        break;
                    }
                default:break;
            }
        }
    }
}