package Controller;

import DAO.UserLoginDB;
import Model.UserLoginModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "UserLoginServlet",value = "/UserLoginServlet")
@MultipartConfig
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        try
        {
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            String statususer = req.getParameter("user");

            UserLoginModel userLoginModel = new UserLoginModel(email,password);
            UserLoginDB uDB = new UserLoginDB();
            boolean UserLogin = uDB.userLogin(userLoginModel);

            if(UserLogin)
            {
                Cookie c = new Cookie("em",email);

                resp.addCookie(c);


                resp.sendRedirect(req.getContextPath() + "/index.jsp?s=login");
//                RequestDispatcher rq=req.getRequestDispatcher(req.getContextPath())+".?");
//                rq.forward(req,resp);
            }
            else
            {
                out.println("<script>alert('incorrect phone number and password Please Enter Valid')</script>");
                RequestDispatcher rq=req.getRequestDispatcher("/User_Login.jsp");
                rq.include(req,resp);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
