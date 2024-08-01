package Controller;

import DAO.VendorLoginDB;
import Model.VendorLoginModel;
import com.example.job_portal_user.HelloServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "vendorLoginServlet" , value = "/vendorLoginServlet")
public class vendorLoginServlet extends HelloServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

        PrintWriter out = resp.getWriter();
        String V_email = req.getParameter("V_email");
        String V_password = req.getParameter("V_password");

        VendorLoginModel vModel = new VendorLoginModel(V_email, V_password);
        VendorLoginDB vDB = new VendorLoginDB();
        boolean VendorLogin = vDB.VendorLogin(vModel);

        if (VendorLogin) {
            resp.sendRedirect(req.getContextPath() + "/?pname=Home");
        }
        else {
            out.println("<script>alert('incorrect phone number and password Please Enter Valid')</script>");
            RequestDispatcher rq=req.getRequestDispatcher("/User_Login.jsp");
            rq.include(req,resp);
        }
    }
}
