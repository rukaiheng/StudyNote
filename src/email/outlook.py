import win32com.client as win32

def send_mail():
    outlook = win32.Dispatch('Outlook.Application')
    # outlook = win32.gencache.EnsureDispatch('Outlook.Application')

    mail_item = outlook.CreateItem(0) #0: olMailItem
    mail_item.Subject = "Mail Test"
    mail_item.Recipients.Add('794971843@qq.com')
    mail_item.BodyFormat = 2
    mail_item.HTMLBody = '''
        <H2>Hello, This is a test mail.<H2>
        this is the second mail
        hello Guys.
    '''
    mail_item.Send()
if __name__ == '__main__':
    send_mail()
