using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Web.UI.HtmlControls;

public partial class Project : System.Web.UI.Page
{
    public BusinessLogic.Project selectedProject { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        // Set page title
        Page.Title = "Give to a project";

        // Set top level navigation
        Master.TopLevelNavigation = Utilities.TopLevelNavigation.Give;

        if (String.IsNullOrEmpty((string)Page.RouteData.Values["ID"]))
        {
            // Don't load project specific content
            fullProjectInformation.Visible = false;

            // Get projects and bind to repeater
            var projects = BusinessLogic.Project.GetAllProjects();

            projectRepeater.ItemDataBound += projectRepeater_ItemDataBound;
            projectRepeater.DataSource = projects;
            projectRepeater.DataBind();
        }
        else
        {
            // Add donate to side nav
            string onclickJS = "ScrollTo('scrollToAnchor', 'payPalContainer'); return false;";
            Master.AddSideNavItem(new BusinessLogic.SideNavigationItem("navDonateNow", "#", "Donate to project", "", false, true, onclickJS));

            // Set autoplay
            ucprojectImages.Autoplay = true;

            // Get project
            var project = BusinessLogic.Project.FindProject(Page.RouteData.Values["ID"].ToString());
            this.selectedProject = project;

            // Get images for TN3
            List<BusinessLogic.TN3Image> tn3Images = new List<BusinessLogic.TN3Image>();
            var relatedMedia = project.RelatedMedias.Where(x => x.MediaType.Type == "TN3Image");
            foreach(BusinessLogic.RelatedMedia rm in relatedMedia)
            {
                tn3Images.Add(new BusinessLogic.TN3Image(rm.TitleOrName, rm.DescriptionOrAltText, rm.URL, rm.DescriptionOrAltText));
            }

            ucprojectImages.TN3Images = tn3Images;
            
            // Remove welcoming paragraph
            projectListContainer.Visible = false;


            ucPayPal.DataBind();
        }
    }

    // Project repeater data bound
    void projectRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        BusinessLogic.Project project = (BusinessLogic.Project)e.Item.DataItem;
        HtmlGenericControl imageContainer = (HtmlGenericControl)e.Item.FindControl("imgContainer");

        // Get project thumbnail
        HyperLink projectLink = new HyperLink();
        projectLink.NavigateUrl = "/give/projects/" + project.SeoURL;

        Image projectImage = new Image();
        projectImage.CssClass = "shadow";

        var thumbnail = project.RelatedMedias.FirstOrDefault(x => x.MediaType.Type == "Thumbnail");

        if (thumbnail != null)
        {
            projectImage.ImageUrl = ResolveUrl(thumbnail.URL);
            projectImage.AlternateText = thumbnail.DescriptionOrAltText;
        }
        else // Thumbnail not provided
        {
            projectImage.ImageUrl = ResolveUrl("~/Images/Project/NoImageProvided.jpg");
        }

        // Add image to container
        projectLink.Controls.Add(projectImage);
        imageContainer.Controls.Add(projectLink);
    }
}