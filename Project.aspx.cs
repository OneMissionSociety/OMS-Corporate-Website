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
    protected void Page_Load(object sender, EventArgs e)
    {
        // Set page title
        Page.Title = "Give to a project";

        // Set top level navigation
        Master.TopLevelNavigation = ApplicationLogic.TopLevelNavigation.Give;

        // Create DB context
        BusinessLogic.WebEntities db = new BusinessLogic.WebEntities();

        if (String.IsNullOrEmpty((string)Page.RouteData.Values["ID"]))
        {
            // Get projects and bind to repeater
            var projects = db.Projects;

            projectRepeater.ItemDataBound += projectRepeater_ItemDataBound;
            projectRepeater.DataSource = projects;
            projectRepeater.DataBind();
        }
        else
        {
            // Remove welcoming paragraph
            projectListContainer.Visible = false;

            // Look up project data
            var projectIdentifier = Page.RouteData.Values["ID"];
            BusinessLogic.Project project = db.Projects.Single(x => x.SeoURL == projectIdentifier);
            
            // Set html
            projectName.InnerText = project.ProjectName;
            projectDescription.InnerHtml = project.Description;
        }
    }

    void projectRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        BusinessLogic.Project project = (BusinessLogic.Project)e.Item.DataItem;
        HtmlGenericControl imageContainer = (HtmlGenericControl)e.Item.FindControl("imgContainer");
        
        // Get project thumbnail
        Image projectImage = new Image();
        projectImage.CssClass = "shadow";

        var thumbnail = project.RelatedMedias.FirstOrDefault(x => x.MediaType.Type == "Thumbnail");

        if (thumbnail != null)
        {
            projectImage.ImageUrl = ResolveUrl(thumbnail.URL);
            projectImage.AlternateText = thumbnail.Description;
        }
        else // Thumbnail not provided
        {
            projectImage.ImageUrl = ResolveUrl("~/Images/Project/NoImageProvided.jpg");
        }

        // Add image to container
        imageContainer.Controls.Add(projectImage);
    }
}