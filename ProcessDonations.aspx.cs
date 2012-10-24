using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProcessDonations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set body to submit onload
        body.Attributes.Add("onload", "document.forms[0].submit()");

        // Set form action and method
        paypalForm.Action = "https://www.sandbox.paypal.com/cgi-bin/webscr"; // TEST URL
        paypalForm.Method = "POST";

        // Retrieve donations from the session
        var donations = BusinessLogic.Donation.GetDonations();

        // Determine donation type
        if (donations.Count() > 1)
        {
            this.processingType = ProcessingType.Cart;
        }
        else
        {
            if (donations.First().DonationType == "Special")
            {
                this.processingType = ProcessingType.OneTime;
            }
            else
            {
                this.processingType = ProcessingType.Recurring;
            }
        }

        // Create collection to store values in
        Dictionary<string, string> formValues = new Dictionary<string, string>();

        // Set default values
        formValues.Add("business", "quick_1350588367_biz@gmail.com");
        formValues.Add("no_shipping", "2");
        formValues.Add("currency_code", "USD");
        formValues.Add("tax", "0");
        formValues.Add("no_note", "1");

        // Add type specific values to collection
        var addedFormValues = this.AddTypeSpecificValues(donations);
        addedFormValues.ToList().ForEach(x => formValues.Add(x.Key, x.Value));

        // Add hidden fields to form
        foreach (KeyValuePair<string, string> pair in formValues)
        {
            HiddenField field = new HiddenField();
            field.ID = (string)pair.Key;
            field.Value = (string)pair.Value;

            paypalForm.Controls.Add(field);
        }
        
        // Clear session so that donations are not saved when the user returns
        BusinessLogic.Donation.ClearDonations();
    }

    #region Private properties

    private ProcessingType processingType;
    private enum ProcessingType
    {
        OneTime,
        Recurring,
        Cart
    }

    #endregion

    #region Private methods

    private Dictionary<string, string> AddTypeSpecificValues(List<BusinessLogic.Donation> donations)
    {

        Dictionary<string, string> dic = new Dictionary<string, string>();
        var donation = donations.First();

        switch (this.processingType)
        {
            case ProcessingType.OneTime:
                dic.Add("cmd", "_donations");
                dic.Add("amount", donation.DonationAmount);
                dic.Add("item_name", donation.AccountName);
                dic.Add("item_number", donation.AccountNumber.ToString());
                break;
            case ProcessingType.Cart:
                dic.Add("cmd", "_cart");
                dic.Add("upload", "1");

                for (var i = 0; i < donations.Count(); i++)
                {
                    var count = (i + 1);
                    dic.Add("item_name_" + count, donations[i].AccountName);
                    dic.Add("item_number_" + count, donations[i].AccountNumber.ToString());
                    dic.Add("amount_" + count, donations[i].DonationAmount);
                }

                break;
            case ProcessingType.Recurring:
                dic.Add("cmd", "_xclick-subscriptions");
                dic.Add("item_name", donation.AccountName);
                dic.Add("item_number", donation.AccountNumber.ToString());
                dic.Add("src", "1"); // Do payments recur? 1 == true
                dic.Add("a3", donation.DonationAmount); // Donation amount
                dic.Add("p3", "1"); // Frequency of recurrence. This is modified by recurrence type (t3)
                dic.Add("t3", (donation.DonationType == "Monthly") ? "M" : "Y"); // Frequency of recurrence (M = Month, Y = Year)

                break;
        }

        return dic;
    }

    #endregion
}