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
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["students"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into[dbo].[student] (stfname,stlname,stfathername,stfatherphone,stemail,stphone,coursejoin,coursefees,fristinstallment,feesdues,joindate) values(@stfname,@stlname,@stfathername,@stfatherphone,@stemail,@stphone,@coursejoin,@coursefees,@fristinstallment,@feesdues,@joindate)";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@stfname", TxtStname.Text);
            sqlcomm.Parameters.AddWithValue("@stlname", TxtStlast.Text);
            sqlcomm.Parameters.AddWithValue("@stfathername",TxtFatherName.Text);
            sqlcomm.Parameters.AddWithValue("@stfatherphone", TxtFatherPhone.Text);
            sqlcomm.Parameters.AddWithValue("@stemail",TxtStEmail.Text);
            sqlcomm.Parameters.AddWithValue("@stphone",TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@coursejoin",DDLCourseName.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@coursefees", LabCourseFees.Text);
            sqlcomm.Parameters.AddWithValue("@fristinstallment",TxtCourseInstallment.Text);
            sqlcomm.Parameters.AddWithValue("@feesdues",LabDueFees.Text);
            sqlcomm.Parameters.AddWithValue("@joindate", LitJoindate.Text);
            sqlcomm.ExecuteNonQuery();

            Labmsg.Text = "the students " + TxtStname.Text + "is saved sucessfully .....<br/> the recept has been sent to email" + TxtStEmail.Text;

           





        }
        protected void DDLCourseName_selectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["students"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[coursetable] where cname=@cname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@cname", DDLCourseName.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                LabCourseFees.Text = sdr["cfees"].ToString();
            }
            sqlconn.Close();
        }
        
          protected void TxtCourseInstallment_TextChanged(object sender,EventArgs e)
        {
            int balance = Convert.ToInt32(LabCourseFees.Text) - Convert.ToInt32(TxtCourseInstallment.Text);
            LabDueFees.Text=balance.ToString();

        }


            
        
    }
}