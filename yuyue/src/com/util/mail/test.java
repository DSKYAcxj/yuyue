package com.util.mail;

public class test {
	public static void main(String[] args){   
        //�������Ҫ�������ʼ�   
     MailSenderInfo mailInfo = new MailSenderInfo();    
     mailInfo.setMailServerHost("smtp.163.com");    
     mailInfo.setMailServerPort("25");    
     mailInfo.setValidate(true);    
     mailInfo.setUserName("han2000lei@163.com");    
     mailInfo.setPassword("**********");//������������    
     mailInfo.setFromAddress("han2000lei@163.com");    
     mailInfo.setToAddress("han2000lei@163.com");    
     mailInfo.setSubject("����������� ��http://www.guihua.org �й�����");    
     mailInfo.setContent("������������ ��http://www.guihua.org �й����� ���й�������վ==");    
        //�������Ҫ�������ʼ�   
     SimpleMailSender sms = new SimpleMailSender();   
         sms.sendTextMail(mailInfo);//���������ʽ    
         sms.sendHtmlMail(mailInfo);//����html��ʽ   
   } 

}
