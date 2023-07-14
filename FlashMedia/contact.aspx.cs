using System;
using System.Net.Mail;

namespace FlashMedia
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearMailForm();
            }
        }

        protected void btn_sendMail_Click(object sender, EventArgs e)
        {
            Send();
        }

        void Send()
        {
            try
            {
                string fromAddress = "imgamer.leo@gmail.com";
                string conName = txt_conName.Text.Trim();
                string conEmail = txt_conEmail.Text.Trim();
                string conSubject = txt_conSubject.Text.Trim();
                string conMessage = txt_conMessage.Text.Trim();

                if (string.IsNullOrEmpty(conEmail))
                {
                    txt_conEmail.Focus();
                    lbl_Error.Text = "Please Enter Your Email";
                    lbl_Error.ForeColor = System.Drawing.Color.OrangeRed;
                }
                else if (string.IsNullOrEmpty(conName))
                {
                    txt_conName.Focus();
                    lbl_Error.Text = "Please Enter Your Name";
                    lbl_Error.ForeColor = System.Drawing.Color.OrangeRed;
                }
                else if (string.IsNullOrEmpty(conSubject))
                {
                    txt_conSubject.Focus();
                    lbl_Error.Text = "Please Enter Your Subject";
                    lbl_Error.ForeColor = System.Drawing.Color.OrangeRed;
                }
                else if (string.IsNullOrEmpty(conMessage))
                {
                    txt_conMessage.Focus();
                    lbl_Error.Text = "Please Enter Your Message";
                    lbl_Error.ForeColor = System.Drawing.Color.OrangeRed;
                }
                else
                {
                    using (MailMessage mm = new MailMessage(fromAddress, conEmail))
                    {
                        mm.Subject = conSubject;
                        mm.Body = conMessage;
                        mm.IsBodyHtml = false;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Send(mm);
                        ClearMailForm();
                        lbl_Error.Text = "Mail Send Successfully!!!";
                    }
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
                lbl_Error.ForeColor = System.Drawing.Color.OrangeRed;

            }
        }

        void ClearMailForm()
        {
            txt_conEmail.Text = string.Empty;
            txt_conName.Text = string.Empty;
            txt_conSubject.Text = string.Empty;
            txt_conMessage.Text = string.Empty;
        }
    }
}