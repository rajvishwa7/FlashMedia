using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace FlashMedia
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string flashStr = ConfigurationManager.ConnectionStrings["flashConnection"].ConnectionString;
        SqlConnection conn = new SqlConnection(flashStr);
        protected void btn_signup_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_flashSignup", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@flName", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_sName.Text;
                SqlParameter param2 = new SqlParameter("@flEmail", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_sEmail.Text;
                SqlParameter param3 = new SqlParameter("@flPassword", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_sPassword.Text;

                txt_sName.Text = string.Empty;
                txt_sEmail.Text = string.Empty;
                txt_sPassword.Text = string.Empty;
                txt_sName.Focus();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    //Response.Write("Awesome.. Sign Up Perfectly!");
                    Response.Write("<script>alert('Awesome.. Sign Up Perfectly!')</script>");
                    Response.Write("<script language='javascript'>window.alert('Awesome.. Sign Up Perfectly!');window.location='account.aspx';</script>");

                }
                else
                {
                    //Response.Write("Oh No.. Sign Up Failed!");
                    Response.Write("<script>alert('Oh No.. Sign Up Failed!')</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}