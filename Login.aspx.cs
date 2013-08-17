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

public partial class Login : System.Web.UI.Page
{
        static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        OleDbConnection conn = new OleDbConnection(connstr);
        //static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_err.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            OleDbCommand CMD = new OleDbCommand("select * from user_id where user_id='" + TextBox_uid.Text + "' and password='" + TextBox_pass.Text + "'", conn);
            OleDbDataReader dr;
            try
            {
                if (conn.State != ConnectionState.Open)
                
                    conn.Open();
                    dr = CMD.ExecuteReader();
                    if (dr.HasRows)
                    {
                        if (dr.Read())
                        {
                            Response.Redirect("default.aspx");
                        }
                    }
                    else
                    {
                        Label_err.Text = "Invalid User ID or password";

                    }
                
            }

            catch (OleDbException)
            {
                //ex.ToString = "Invalid User name and password";
                Label_err.Text = "Invalid User ID/password";
            }
        finally
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Close();
            }
        }
            
    }
}