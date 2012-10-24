using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_TN3 : System.Web.UI.UserControl
{
    public List<BusinessLogic.TN3Image> TN3Images { get; set; }
    public bool Autoplay { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        // Update defaults
        ScriptManager.RegisterStartupScript(this, this.GetType(), "autoPlay", "var _autoplay = " + this.Autoplay.ToString().ToLower(), true);

        LoadImages();
    }

    public void LoadImages()
    {
        rptTN3.DataSource = this.TN3Images;
        rptTN3.DataBind();
    }
}