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

public partial class Employee1 : System.Web.UI.Page
{
    static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //static string connstr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Users\cena\Documents\Visual Studio 2010\WebSites\WebSite9\App_Data\Exgratia.accdb";
    OleDbConnection dbconn = new OleDbConnection(connstr);
    OleDbCommand dbCMD = new OleDbCommand();
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_err.Text = "";
        Labelresult.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            dbconn.Open();
            dbCMD.Connection = dbconn;
            dbCMD.CommandText = ("insert into Emp_master(empno,Name,DOB,Last_grade,Last_designation,Last_Unit,Last_location,Parent_Division) values (:empno,:name,:dob,:l_grade,:l_designation,:l_unit,:l_location,:p_division)");
            dbCMD.Parameters.Clear();
            dbCMD.Parameters.Add("empno", empno.Text);
            dbCMD.Parameters.Add("Name", name.Text);
            dbCMD.Parameters.Add("DOB", dob.Text);
            dbCMD.Parameters.Add("Last_grade", l_grade.Text);
            dbCMD.Parameters.Add("Last_designation", l_designation.Text);
            dbCMD.Parameters.Add("Last_Unit", l_unit.Text);
            dbCMD.Parameters.Add("Last_location", l_location.Text);
            dbCMD.Parameters.Add("Parent_Division", p_division.Text);
            //if (dt.Text != "")
            //     dbCMD.Parameters.Add("dt",dt.Text );    
            //else
            //     dbCMD.Parameters.Add("dt", DBNull.Value);

            dbCMD.ExecuteNonQuery();
            Labelresult.Text = "Data successfully saved";
        }
        catch (OleDbException ex)
        {
            Labelresult.Text = "Record already exist please enter a new value ";
        }
        finally
        {
            dbconn.Close();
        }

        

        //GridView1.AutoGenerateColumns = true;
        //SqlDataSource1.SelectCommand = "select * from employee";

        //empno.Text
        //  name.Text
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        empno.Text = "";
        name.Text = "";
        dob.Text = "";
        l_grade.Text = "";
        l_designation.Text = "";
        l_unit.Text = "";
        l_location.Text = "";
        p_division.Text = "";
        Labelresult.Text = "Data successfully canceled";
    }
    protected void fetch_Click(object sender, EventArgs e)
    {
        OleDbCommand dbCMD = new OleDbCommand("select * from Emp_master where empno='" + empno.Text + "'", dbconn);
        try
        {
            if (dbconn.State != ConnectionState.Open)

                dbconn.Open();

            dtr = dbCMD.ExecuteReader();
            while (dtr.Read())
            {
                name.Text = dtr["Name"].ToString();
                dob.Text = dtr["DOB"].ToString();
                l_grade.Text = dtr["Last_grade"].ToString();
                l_designation.Text = dtr["Last_designation"].ToString();
                l_unit.Text = dtr["Last_Unit"].ToString();
                l_location.Text = dtr["Last_location"].ToString();
                p_division.Text = dtr["Parent_Division"].ToString();
            }
        }
        catch (OleDbException ex)
        {
            Labelresult.Text = "Record already exist please enter a new value ";
        }
        finally
        {
            if (dbconn.State != ConnectionState.Open)
            {
                dtr.Close();
                dbconn.Close();
            }
        }
    }
}