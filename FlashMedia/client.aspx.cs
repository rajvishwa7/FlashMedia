using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FlashMedia
{
    public partial class client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static string flashStr = ConfigurationManager.ConnectionStrings["flashConnection"].ConnectionString;
        SqlConnection conn = new SqlConnection(flashStr);
        protected void btn_clInsert_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_clientInsert", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@ClUserID", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_clUserId.Text;
                SqlParameter param2 = new SqlParameter("@ClCompName", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_clCompName.Text;
                SqlParameter param3 = new SqlParameter("@ClName", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_clName.Text;
                SqlParameter param4 = new SqlParameter("@ClEmail", SqlDbType.VarChar);
                cmd.Parameters.Add(param4).Value = txt_clEmail.Text;
                SqlParameter param5 = new SqlParameter("@ClMobile", SqlDbType.VarChar);
                cmd.Parameters.Add(param5).Value = txt_clMobile.Text;
                SqlParameter param6 = new SqlParameter("@ClAddress", SqlDbType.VarChar);
                cmd.Parameters.Add(param6).Value = txt_clAddress.Text;
                SqlParameter param7 = new SqlParameter("@ClCity", SqlDbType.VarChar);
                cmd.Parameters.Add(param7).Value = txt_clCity.Text;
                SqlParameter param8 = new SqlParameter("@ClState", SqlDbType.VarChar);
                cmd.Parameters.Add(param8).Value = txt_clState.Text;

                txt_clUserId.Text = string.Empty;
                txt_clCompName.Text = string.Empty;
                txt_clName.Text = string.Empty;
                txt_clEmail.Text = string.Empty;
                txt_clMobile.Text = string.Empty;
                txt_clAddress.Text = string.Empty;
                txt_clCity.Text = string.Empty;
                txt_clState.Text = string.Empty;
                txt_clUserId.Focus();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    //Response.Write("Awesome.. Sign Up Perfectly!");
                    //Response.Write("<script>alert('Client Details Inserted Perfectly!')</script>");
                    Response.Write("<script language='javascript'>window.alert('Client Details Inserted Perfectly!');window.location='viewClient.aspx';</script>");

                }
                else
                {
                    //Response.Write("Oh No.. Sign Up Failed!");
                    Response.Write("<script>alert('Client Details Not Inserted!')</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_clUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_clientUpdate", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@ClUserID", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_clUserId.Text;
                SqlParameter param2 = new SqlParameter("@ClCompName", SqlDbType.VarChar);
                cmd.Parameters.Add(param2).Value = txt_clCompName.Text;
                SqlParameter param3 = new SqlParameter("@ClName", SqlDbType.VarChar);
                cmd.Parameters.Add(param3).Value = txt_clName.Text;
                SqlParameter param4 = new SqlParameter("@ClEmail", SqlDbType.VarChar);
                cmd.Parameters.Add(param4).Value = txt_clEmail.Text;
                SqlParameter param5 = new SqlParameter("@ClMobile", SqlDbType.VarChar);
                cmd.Parameters.Add(param5).Value = txt_clMobile.Text;
                SqlParameter param6 = new SqlParameter("@ClAddress", SqlDbType.VarChar);
                cmd.Parameters.Add(param6).Value = txt_clAddress.Text;
                SqlParameter param7 = new SqlParameter("@ClCity", SqlDbType.VarChar);
                cmd.Parameters.Add(param7).Value = txt_clCity.Text;
                SqlParameter param8 = new SqlParameter("@ClState", SqlDbType.VarChar);
                cmd.Parameters.Add(param8).Value = txt_clState.Text;

                txt_clUserId.Text = string.Empty;
                txt_clCompName.Text = string.Empty;
                txt_clName.Text = string.Empty;
                txt_clEmail.Text = string.Empty;
                txt_clMobile.Text = string.Empty;
                txt_clAddress.Text = string.Empty;
                txt_clCity.Text = string.Empty;
                txt_clState.Text = string.Empty;
                txt_clUserId.Focus();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    //Response.Write("Awesome.. Sign Up Perfectly!");
                    //Response.Write("<script>alert('Client Details Inserted Perfectly!')</script>");
                    Response.Write("<script language='javascript'>window.alert('Client Details Updated Perfectly!');window.location='viewClient.aspx';</script>");

                }
                else
                {
                    //Response.Write("Oh No.. Sign Up Failed!");
                    Response.Write("<script>alert('Client Details Not Updated!')</script>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_clDelete_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_clientDelete", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@ClUserID", SqlDbType.VarChar);
                cmd.Parameters.Add(param1).Value = txt_clUserId.Text;

                txt_clUserId.Focus();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    //Response.Write("Awesome.. Sign Up Perfectly!");
                    //Response.Write("<script>alert('Client Details Inserted Perfectly!')</script>");
                    Response.Write("<script language='javascript'>window.alert('Client Details Deleted Perfectly!');window.location='viewClient.aspx';</script>");

                }
                else
                {
                    //Response.Write("Oh No.. Sign Up Failed!");
                    Response.Write("<script>alert('Client Details Not Deleted!')</script>");
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