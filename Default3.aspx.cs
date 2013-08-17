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

public partial class Default3 : System.Web.UI.Page
{
    static string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //static string connstr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Users\cena\Documents\Visual Studio 2010\WebSites\WebSite9\App_Data\Exgratia.accdb";
    OleDbConnection dbconn = new OleDbConnection(connstr);
    OleDbCommand dbCMD = new OleDbCommand();
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void paymentunit_onload(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            dbCMD.Connection = dbconn;
            dbconn.Open();
            dbCMD = new OleDbCommand("select payment_ur from payment_unit", dbconn);
            dtr = dbCMD.ExecuteReader();
            while (dtr.Read())
            {
                paymentunit.Items.Add(new ListItem(dtr["payment_ur"].ToString()));
            }
            dtr.Close();
            dbconn.Close();
        }
    

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconn.Open();
        dbCMD = new OleDbCommand("select * from Ex_gratia where empno='" + empno.Text + "'", dbconn);
        dtr = dbCMD.ExecuteReader();
        while (dtr.Read())
        {
            status.Text = dtr["Status"].ToString();
            initial_d.Text = dtr["Initial_Documnt_Submission"].ToString();
            payment.Text = dtr["Payment_mode"].ToString();
            doj.Text = dtr["Date_of_Joining"].ToString();
            
            
        }

        dtr.Close();
        dbconn.Close();
    }
    protected void save_Click(object sender, EventArgs e)
    {
        try
        {
            dbconn.Open();
            dbCMD.Connection = dbconn;
            dbCMD.CommandText = ("insert into Ex_gratia (empno,Status,Initial_Documnt_Submission,Payment_mode,Date_of_Joining,Payment_Unit) values(:empno,:status,:initial_d,:payment,:doj,:paymentunit)");
            dbCMD.Parameters.Clear();
            dbCMD.Parameters.Add("empno", empno.Text);
            dbCMD.Parameters.Add("Status", status.Text);
            dbCMD.Parameters.Add("Initial_Documnt_Submission", initial_d.Text);
            dbCMD.Parameters.Add("Payment_mode", payment.Text);
            dbCMD.Parameters.Add("Date_of_Joining", doj.Text);
            dbCMD.Parameters.Add("Payment_Unit", paymentunit.SelectedValue);
            

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



           
        
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        empno.Text = "";
        status.Text = "";
        initial_d.Text = "";
        payment.Text ="";
        doj.Text = "";
        Labelresult.Text = "Data successfully canceled";
        paymentunit.SelectedIndex = 0;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            dbconn.Open();
            dbCMD.Connection = dbconn;
            dbCMD.CommandText = ("insert into Ex_gratia (empno,Status,Initial_Documnt_Submission,Payment_mode,Date_of_Joining,Payment_Unit) values(:empno,:status,:initial_d,:payment,:doj,:paymentunit)");
            dbCMD.Parameters.Clear();
            dbCMD.Parameters.Add("empno", empno.Text);
            dbCMD.Parameters.Add("Status", status.Text);
            dbCMD.Parameters.Add("Initial_Documnt_Submission",initial_d.Text);
            dbCMD.Parameters.Add("Payment_mode", payment.Text);
            dbCMD.Parameters.Add("Date_of_Joining", doj.Text);
            dbCMD.Parameters.Add("Payment_Unit", paymentunit.SelectedValue);
            dbCMD.ExecuteNonQuery();
            dbconn.Close();
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

    }
}