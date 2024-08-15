package Controller;

import DAO.UserSignupDB;
import Model.UserSignupModel;

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

               resp.sendRedirect(req.getContextPath() + "Page/Home.jsp");
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
}
