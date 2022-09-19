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
    public partial class CoursePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["students"].ConnectionString;
            SqlConnection sqlconn= new SqlConnection(mainconn);
            string sqlquery= "insert into [dbo].[coursetable](cname,duration,cfees) values(@cname,@duration,@cfees)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@cname", TxtCoursename.Text);
            sqlcomm.Parameters.AddWithValue("@duration", TxtDuration.Text);
            sqlcomm.Parameters.AddWithValue("@cfees", TxtFees.Text);
            sqlcomm.ExecuteNonQuery();
            LabMsg.Text = "The Course" + TxtCoursename.Text + "Is saved sucessfully .......!";
            TxtCoursename.Text = "";
            TxtDuration.Text = "";
            TxtFees.Text = "";
            sqlconn.Close();







        }
    }
}