using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication3
{
    public partial class TutorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void ButTutor_Click(object sender, EventArgs e)
        {
            
            


                string mainconn = ConfigurationManager.ConnectionStrings["students"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "insert into [dbo].[tutor](tname,temail,tphone,tcourse,tqualification,joindate) values(@tname,@temail,@tphone,@tcourse,@tqualification,@joindate)";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                 sqlconn.Open();
       
                sqlcomm.Parameters.AddWithValue("@tname", TxtTutorname.Text);
                sqlcomm.Parameters.AddWithValue("@temail", TxtEmail.Text);
                sqlcomm.Parameters.AddWithValue("@tphone", TxtPhone.Text);
                sqlcomm.Parameters.AddWithValue("@tcourse", DDLCourse.SelectedItem.Text);
                sqlcomm.Parameters.AddWithValue("@tqualification", TxtQualification.Text);
                sqlcomm.Parameters.AddWithValue("@joindate", LitJoindate.Text);
                sqlcomm.ExecuteNonQuery();
                LabMsg.Text = "The tutor" + TxtTutorname.Text + "Is saved sucessfully .......!";
                TxtTutorname.Text = "";
                TxtEmail.Text = "";
                TxtQualification.Text = "";
                sqlconn.Close();
            
        }
    }
}

