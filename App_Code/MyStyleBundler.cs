using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Optimization;

public class MyStyleBundler
{
    public static string RenderPageSpecificStyle(string pagePath)
    {
        var pageName = GetPageName(pagePath);
        string bundleName = EnsureBundle(pageName);
        return bundleName;
    }

    public static string GetPageName(string pagePath)
    {
        string pageFileName = pagePath.Substring(pagePath.LastIndexOf('/'));
        string pageNameWithoutExtension = Path.GetFileNameWithoutExtension(pageFileName);
        return pageNameWithoutExtension;
    }

    public static string EnsureBundle(string pageName)
    {
        var bundleName = "~/styles/" + pageName;
        var bundle = BundleTable.Bundles.GetBundleFor(bundleName);
        if (bundle == null)
        {
            bundle = new StyleBundle(bundleName).Include("~/styles/site.css", "~/styles/qtip.css", "~/styles/" + pageName + ".css");
            BundleTable.Bundles.Add(bundle);
        }
        
        return bundleName;
    }
}