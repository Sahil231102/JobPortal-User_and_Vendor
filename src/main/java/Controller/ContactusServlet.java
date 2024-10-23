package Controller;

import DAO.ContactusDB;
import Model.ContactusModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContactusServlet",value = "/ContactusServlet")
@MultipartConfig
public class ContactusServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

        String Message = req.getParameter("message");
        String S_id = req.getParameter("s_id");

        ContactusModel cModel = new ContactusModel(Message,S_id);
        ContactusDB cDB =new ContactusDB();
        boolean insert =
    cDB.ContactusDB(cModel);

        if(insert)
        {
            resp.sendRedirect(req.getContextPath()+".?pname=Home&s=contactSucess");
        }
        else
        {
            resp.sendRedirect(req.getContextPath()+".?pname=Home&s=contactF");
        }
    }
}
