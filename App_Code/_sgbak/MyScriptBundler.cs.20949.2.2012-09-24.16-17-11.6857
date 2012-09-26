using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;

/// <summary>
/// Creates JS bundles
/// </summary>
public class MyScriptBundler
{
    public MyScriptBundler() { }

    public static string RenderPageSpecificScript(string pagePath)
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
        var bundleName = "~/scripts/" + pageName;
        var bundle = BundleTable.Bundles.GetBundleFor(bundleName);
        if (bundle == null)
        {
            bundle = new ScriptBundle(bundleName).Include("~/scripts/jquery-{version}.js",
                "~/scripts/jquery-ui-{version}.js",
                "~/scripts/hoverIntent.js",
                "~/scripts/jquery.sticky.js",
                "~/scripts/site.js",
                "~/scripts/" + pageName + ".js");

            BundleTable.Bundles.Add(bundle);
        }

        return bundleName;
    }
}