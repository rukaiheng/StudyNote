using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Outlook = Microsoft.Office.Interop.Outlook;

namespace EmailTest
{
    class Program
    {
        public static void DisplaceAccountInformation(Outlook.Application application) {
            Outlook.Accounts accounts = application.Session.Accounts;
            StringBuilder builder = new StringBuilder();
            foreach (Outlook.Account account in accounts)
            {
                builder.AppendFormat("DisplayName: {0}\n", account.DisplayName);
                // The UserName property provides an account-based context to determine identity. 
                builder.AppendFormat("UserName: {0}\n", account.UserName);

                // The SmtpAddress property provides the SMTP address for the account. 
                builder.AppendFormat("SmtpAddress: {0}\n", account.SmtpAddress);

                // The AccountType property indicates the type of the account. 
                builder.Append("AccountType: ");
                switch (account.AccountType)
                {

                    case Outlook.OlAccountType.olExchange:
                        builder.AppendLine("Exchange");
                        break;

                    case Outlook.OlAccountType.olHttp:
                        builder.AppendLine("Http");
                        break;

                    case Outlook.OlAccountType.olImap:
                        builder.AppendLine("Imap");
                        break;

                    case Outlook.OlAccountType.olOtherAccount:
                        builder.AppendLine("Other");
                        break;

                    case Outlook.OlAccountType.olPop3:
                        builder.AppendLine("Pop3");
                        break;
                }
                builder.AppendLine();
            }
            // Display the account information. 
            System.Console.WriteLine(builder.ToString());
            //System.Windows.Forms.MessageBox.Show(builder.ToString());
        }
        public static void SendMail(Outlook.Application app) {
            Outlook.MailItem item = app.CreateItem(Microsoft.Office.Interop.Outlook.OlItemType.olMailItem);
            item.Subject = "Mail Test";
            item.BodyFormat = Outlook.OlBodyFormat.olFormatHTML;
            item.HTMLBody = "< H2 > Hello, This is a test mail.< H2 > Run on the back ground.";
            Outlook.Recipient theRecipient = item.Recipients.Add("794971843@qq.com");
            item.Send();
        }
        static void Main(string[] args)
        {
            Outlook.Application myOutLook = new Outlook.Application();
            //DisplaceAccountInformation(myOutLook);
            SendMail(myOutLook);
        }
    }
}
