using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class UserControls_PayPal : System.Web.UI.UserControl
{
    public BusinessLogic.Project Project { get; set; }
    public BusinessLogic.Donation Donation { get; set; } 

    protected void Page_Load(object sender, EventArgs e)
    {
        // Page requires postback data - enable viewstate
        Page.ViewStateMode = System.Web.UI.ViewStateMode.Enabled;

        if (this.Project != null && !IsPostBack)
        {
            // Check if project has already been saved
            var existingDonation = BusinessLogic.Donation.FindDonation(Project.AccountNumber);

            if (existingDonation != null)
            {
                this.Donation = existingDonation;

                // If donation exists in session, don't allow user to add again
                donationForm.Visible = false;
            }
            else
            {
                // If donation doesn't exist in session, hide preExisting form
                preExistingDonation.Visible = false;

                // Add gift type options to drop down
                // If a special gift has already been added to the session, limit gifts to special only
                // TODO: What happens if "Special" donation type is not part of defined data???
                ddlGiftType.DataSource = (BusinessLogic.Donation.GetDonations().Count() > 0) ? this.Project.DonationTypes.Where(x => x.DonationTypeName == "Special") : this.Project.DonationTypes;
                ddlGiftType.DataTextField = "DonationTypeDescription";
                ddlGiftType.DataValueField = "DonationTypeName";
                ddlGiftType.DataBind();

                ddlGiftType.SelectedValue = this.Project.DonationType.DonationTypeName;

                // If Special give is default, show save button, else, hide save button
                if (this.Project.DonationType.DonationTypeName != "Special")
                {
                    btnSave.Attributes["style"] += " display:none;";
                }

                // Add default gift amount to text box
                txtGiftAmount.Text = this.Project.SuggestedDonationAmount.ToString("N2");
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SaveDonation();
        Response.Redirect("~/give");
    }
    protected void btnRemoveGift_Click(object sender, EventArgs e)
    {
        BusinessLogic.Donation.RemoveDonation(this.Project.AccountNumber);
        Response.Redirect("~/give");
    }
    protected void btnGive_Click(object sender, EventArgs e)
    {
        SaveDonation();
        Response.Redirect("~/ProcessDonations.aspx");
    }
    protected void SaveDonation()
    {
        BusinessLogic.Donation.SaveDonation(new BusinessLogic.Donation(this.Project.AccountNumber, this.Project.ProjectName, txtGiftAmount.Text, ddlGiftType.SelectedValue));
    }
}