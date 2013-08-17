using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //static string connstr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Users\cena\Documents\Visual Studio 2010\WebSites\WebSite9\App_Data\Exgratia.accdb";
    OleDbConnection dbconn = new OleDbConnection(connstr);
    OleDbCommand dbCMD = new OleDbCommand();
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Page.PreviousPage != null)
        {
            Control ContentPlaceHolder1 = this.Page.PreviousPage.Master.FindControl("ContentPlaceHolder1");
            GridView GridView1 = (GridView)ContentPlaceHolder1.FindControl("GridView1");
            GridView1.DataBind();
        }
    }
    protected void display_Click(object sender, EventArgs e)
    {
        Session["user"] = empno.Text;
        Response.Redirect("dependent.aspx");
        
        
    }
}