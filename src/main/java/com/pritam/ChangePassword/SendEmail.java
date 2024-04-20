package com.pritam.ChangePassword;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {
 public static void main(String[] args) {

  String host = "smtp.gmail.com";
  final String user = "pritammagdum24@gmail.com";// change accordingly
  final String password = "SPlove@1622";// change accordingly

  //String to = "pritammagdum24@gmail.com";// change accordingly
  String to = "pritammagdum24@gmail.com";

  // Get the session object
  Properties props = new Properties();
  props.put("mail.smtp.host", host);
  props.put("mail.smtp.auth", "true");
  // props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.starttls.enable", "true");
  props.put("mail.smtp.host", host);
  props.put("mail.smtp.port", "587");
  Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication(user, password);
   }
  });

  // Compose the message
  try {
   MimeMessage message = new MimeMessage(session);
   message.setFrom(new InternetAddress(user));
   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
   message.setSubject("JAVAMailAPI");
   message.setText("This is simple program of sending email using JavaMail API");

   // send the message
   Transport.send(message);

   System.out.println("message sent successfully...");

  } catch (MessagingException e) {
   e.printStackTrace();
  }
 }
}