package Controller;

import DAO.UserLoginDB;
import Model.UserLoginModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

            UserLoginModel userLoginModel = new UserLoginModel(email,password);
            UserLoginDB uDB = new UserLoginDB();
            boolean UserLogin = uDB.userLogin(userLoginModel);

            if(UserLogin)
            {
                resp.sendRedirect("/index.jsp");
//                RequestDispatcher rq=req.getRequestDispatcher(req.getContextPath())+".?");
//                rq.forward(req,resp);
            }
            else
            {
                RequestDispatcher rq=req.getRequestDispatcher("/User_Login.jsp");
                rq.include(req,resp);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
