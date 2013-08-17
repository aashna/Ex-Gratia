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

public partial class Default2 : System.Web.UI.Page
{
    static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //static string connstr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Users\cena\Documents\Visual Studio 2010\WebSites\WebSite9\App_Data\Exgratia.accdb";
    OleDbConnection dbconn = new OleDbConnection(connstr);
    OleDbCommand dbCMD = new OleDbCommand();
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    { 
       // Label_err.Text = "";
       // Labelresult.Text = "";
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        empno.Text = "";
        title.Text = "";
        dependent.Text = "";
        dob.Text = "";
        vendorno.Text = "";
        Textboxdeath.Text = "";
        relation.SelectedIndex = 0;


    }

    
    protected void Button1_Click1(object sender, EventArgs e)
    {
       

        try
        {
            dbconn.Open();
            dbCMD.Connection = dbconn;
            //dbCMD.CommandText = ("insert into employee(empno,emp_name,dt) values (:empno,:name,:dt)");
            dbCMD.CommandText = ("insert into dependent(empno,Title,Dep_Name,Relation,DOB,Vendor_no,Death_dt) values (:empno,:title,:dependent,:relation,:dob,:vendorno,:textboxdeath)");
            dbCMD.Parameters.Clear();
            dbCMD.Parameters.Add("empno", empno.Text);
            dbCMD.Parameters.Add("Title", title.Text);
            dbCMD.Parameters.Add("Dep_Name", dependent.Text);
            dbCMD.Parameters.Add("Relation", relation.Text);
            dbCMD.Parameters.Add("DOB", dob.Text);
            dbCMD.Parameters.Add("Vendor_no", vendorno.Text);
            dbCMD.Parameters.Add("Death_dt", Textboxdeath.Text);
            //if (dt.Text != "")
            //     dbCMD.Parameters.Add("dt",dt.Text );    
            //else
            //     dbCMD.Parameters.Add("dt", DBNull.Value);    
            dbCMD.ExecuteNonQuery();
            GridView1.DataBind();
           
            Labelresult.Text = "Data successfully Inserted";
        }
        catch (OleDbException ex)
        {
             Label_err.Text = "Record already exist please enter a new value ";
            
        }
        finally
        {
            dbconn.Close();
            GridView1.DataBind();
        }

        
        
        
    }
                
        protected void save_Click(object sender, EventArgs e)
    {
        dbCMD.Connection = dbconn;
        dbconn.Open();
        try
        {
            if (ViewState["Action"] != null)
            {
                if (ViewState["Action"].ToString() == "save")
                {


                    dbCMD.CommandText = ("UPDATE dependent SET empno='" + empno.Text + "', Title='" + title.Text + "', Dep_Name='" + dependent.Text + "',Relation='" + relation.Text + "',DOB='" + dob.Text + "',Vendor_no='" + vendorno.Text + "',Death_dt='" + Textboxdeath.Text + "' where empno='" + empno.Text + "'");


                }
                else
                {


                    //dbCMD.CommandText = ("insert into employee(empno,emp_name,dt) values (:empno,:name,:dt)");
                    dbCMD.CommandText = ("insert into dependent(empno,Title,Dep_Name,Relation,DOB,Vendor_no,Death_dt) values (:empno,:title,:dependent,:relation,:dob,:vendorno,:textboxdeath)");
                    dbCMD.Parameters.Clear();
                    dbCMD.Parameters.Add("empno", empno.Text);
                    dbCMD.Parameters.Add("Title", title.Text);
                    dbCMD.Parameters.Add("Dep_Name", dependent.Text);
                    dbCMD.Parameters.Add("Relation", relation.Text);
                    dbCMD.Parameters.Add("DOB", dob.Text);
                    dbCMD.Parameters.Add("Vendor_no", vendorno.Text);
                    dbCMD.Parameters.Add("Death_dt", Textboxdeath.Text);
                    //if (dt.Text != "")
                    //     dbCMD.Parameters.Add("dt",dt.Text );    
                    //else
                    //     dbCMD.Parameters.Add("dt", DBNull.Value);    

                    dbCMD.ExecuteNonQuery();

                    Labelresult.Text = "Data successfully Inserted";
                }

            }
        }
        catch (OleDbException ex)
        {
           Label_err.Text = "Record already exist please enter a new value ";
            
        }
        finally
        {
            dbconn.Close();
            GridView1.DataBind();
        }
        }
       
}