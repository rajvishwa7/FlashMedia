using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FlashMedia
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string flashStr = ConfigurationManager.ConnectionStrings["flashConnection"].ConnectionString;
        SqlConnection conn = new SqlConnection(flashStr);
        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_flashLogin", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@flEmail", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_lEmail.Text;
                SqlParameter param2 = new SqlParameter("@flPassword", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_lPassword.Text;

                txt_lEmail.Text = string.Empty;
                txt_lPassword.Text = string.Empty;
                txt_lEmail.Focus();

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();

                da.Fill(ds);

                int x = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                if (x > 0)
                {
                    //Response.Write("Awesome.. Sign Up Perfectly!");
                    //Response.Write("<script>alert('Welcome to Flash Media!')</script>");
                    Response.Write("<script language='javascript'>window.alert('Welcome to Flash Media!');window.location='client.aspx';</script>");

                }
                else
                {
                    //Response.Write("Oh No.. Sign Up Failed!");
                    Response.Write("<script>alert('Oops.. Login Failed!')</script>");
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