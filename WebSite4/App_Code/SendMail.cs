using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Net.Mail;
/// <summary>
/// SendMail 的摘要说明
/// </summary>
public class SendMail
{
	public SendMail()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public bool SendEmail(String toAddress, String bodycontent)
    {
        String EmailAccount = "1522098487@qq.com";
        String password = "mxtqzcxxpdpejbii";
        String smtpServer = "smtp.qq.com";
        String subject = "来自袁圣琪的消息";
        SmtpClient client = new SmtpClient(smtpServer);
        client.Credentials = new System.Net.NetworkCredential(EmailAccount, password);
        client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        MailMessage message = new MailMessage(EmailAccount,toAddress,subject,bodycontent);
        message.BodyEncoding = System.Text.Encoding.UTF8;
        message.IsBodyHtml = true;
        message.Priority = System.Net.Mail.MailPriority.High;
        try
        {
            client.SendAsync(message, "");
            return true;
        }
        catch (Exception ex) 
        {
            
            throw ex;
        }

    }
 
}