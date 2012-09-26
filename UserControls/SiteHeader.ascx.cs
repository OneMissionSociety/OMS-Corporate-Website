using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_SiteHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Get souls for the year
        int souls = ApplicationLogic.GetSoulsYearToDate(Convert.ToInt32(WebConfigurationManager.AppSettings["SoulsPerSecond"]));
        SoulCount.Text = String.Format("<span id='soulCountValue'>{0 :#,###0}</span> <b><em>souls</em></b> in {1} {2}", souls, DateTime.Now.Year, "and counting...");
    }
}