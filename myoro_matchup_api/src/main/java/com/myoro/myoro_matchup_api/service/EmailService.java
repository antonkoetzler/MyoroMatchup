package com.myoro.myoro_matchup_api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

/** Email service. */
@Service
public class EmailService {
  /** Java mail sender for sending emails */
  @Autowired private JavaMailSender mailSender;

  /** From email address */
  @Value("${spring.mail.from:noreply@myoro.com}")
  private String fromEmail;

  /** Frontend URL for password reset links */
  @Value("${app.frontend.url:http://localhost:3000}")
  private String frontendUrl;

  /**
   * Sends a password reset email to the user
   *
   * @param to the recipient email address
   * @param token the password reset token
   * @param username the username of the user
   */
  public void sendPasswordResetEmail(String to, String token, String username) {
    SimpleMailMessage message = new SimpleMailMessage();
    message.setFrom(fromEmail);
    message.setTo(to);
    message.setSubject("Password Reset Request");
    message.setText(buildPasswordResetEmailBody(username, token));
    mailSender.send(message);
  }

  /**
   * Builds the password reset email body
   *
   * @param username the username
   * @param token the reset token
   * @return the email body text
   */
  private String buildPasswordResetEmailBody(String username, String token) {
    String resetLink = frontendUrl + "/reset-password?token=" + token;
    return String.format(
        "Hello %s,\n\n"
            + "You requested to reset your password. Please click the link below to reset your password:\n\n"
            + "%s\n\n"
            + "This link will expire in 1 hour.\n\n"
            + "If you did not request this password reset, please ignore this email.\n\n"
            + "Best regards,\n"
            + "Myoro Matchup Team",
        username, resetLink);
  }
}
