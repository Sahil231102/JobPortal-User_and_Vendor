package Controller;

import DAO.UserSignupDB;
import Model.UserSignupModel;
import javax.mail.Transport;
import javax.mail.MessagingException;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@WebServlet(name = "UserSignupServlet", value = "/UserSignupServlet")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 10  // 10 MB
)
public class UserSignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String Dob = req.getParameter("dob");
            String gender = req.getParameter("gender");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String password = req.getParameter("Password");
            String UG = req.getParameter("UG");
            String PG = req.getParameter("PG");
            String Collegename =req.getParameter("collegeName");
            Part filePart = req.getPart("uimg");
            InputStream inputStream = filePart.getInputStream();
            byte[] dp = readBytesFromInputStream(inputStream);

            UserSignupModel userSignupModel = new UserSignupModel(fname, lname, Dob,gender,email,phone,UG,PG,Collegename, password,  dp);
            UserSignupDB uDB = new UserSignupDB();
            boolean userSignUp = uDB.UserSignup(userSignupModel);

            System.out.println(fname);
            System.out.println(lname);
            System.out.println(Dob);
            System.out.println(gender);
            System.out.println(email);
            System.out.println(phone);
            System.out.println(password);
            System.out.println(UG);
            System.out.println(PG);
            System.out.println(Collegename);
            System.out.println(userSignUp);

            if (userSignUp) {
                String subject = "Welcome to Our Service";
                String messageBody = "<h1>Welcome, " + fname + "!</h1>" + "<p>Thank you for Registering with us.</p>";
                sendEmail(email, subject, messageBody);
               resp.sendRedirect("User_Login.jsp?s=singUp");
            } else {
             req.getRequestDispatcher(req.getContextPath()+"Page/User_SignUp.jsp").include(req,resp);
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    private byte[] readBytesFromInputStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        int bytesRead;
        byte[] data = new byte[1024];
        while ((bytesRead = inputStream.read(data, 0, data.length)) != -1) {
            buffer.write(data, 0, bytesRead);
        }
        return buffer.toByteArray();
    }
    public void sendEmail(String recipientEmail, String subject, String messageBody) {
        // Sender's email ID and password need to be mentioned
        final String username = "vasoyauday808@gmail.com"; // <-- Replace with your Gmail username
        final String password = "riam tqkd bnms qjtm";

        // Setting up mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // Creating a new session with an authenticator
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Creating a default MimeMessage object
            Message message = new MimeMessage(session);

            // Setting From: header field of the header
            message.setFrom(new InternetAddress(username));

            // Setting To: header field of the header
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail)); // Specified recipient email address

            // Setting Subject: header field
            message.setSubject(subject);

            // Now set the actual message
            message.setContent(messageBody, "text/html"); // Set content as HTML

            // Sending the message
            Transport.send(message);

            // Writing response
            System.out.println("Sent message successfully to " + recipientEmail);
        } catch (MessagingException e) {
            // Print the stack trace to the console
            e.printStackTrace();

            // Write the error message to the response
            System.out.println("Failed to send the email. Error: " + e.getMessage());
        }
    }
}
