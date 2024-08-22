package Controller;

import DAO.UpdateUserProfileDB;
import Model.UpdateUserProfileModel;
import Model.UserSignupModel;

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
import java.util.Date;


@WebServlet(name = "UpdateUserProfileServlet",value = "/UpdateUserProfileServlet")
@MultipartConfig(maxFileSize = 1024*1024*10)
public class UpdateUserProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
    String s_id = req.getParameter("s_id");
    String fname = req.getParameter("fname");
    String lname = req.getParameter("lname");
    String phone = req.getParameter("phone");
    String Gender = req.getParameter("Gender");
    String UG = req.getParameter("UG");
    String PG = req.getParameter("PG");
    String CollegeName = req.getParameter("CollegeName");

//    System.out.println(id);
//    System.out.println(fname);
//    System.out.println(lname);
//    System.out.println(email);
//    System.out.println(phone);
//    System.out.println(gender);


    Part updateimg = req.getPart("updateimg");
    InputStream inputStream = updateimg.getInputStream();
    byte[] UpdateImg = readByteFromInputstream(inputStream);

    UpdateUserProfileModel UUPM = new UpdateUserProfileModel(s_id,fname,lname,phone,UG,PG,CollegeName, Gender,UpdateImg);
    UpdateUserProfileDB uupDB = new UpdateUserProfileDB();
    boolean updateData = uupDB.UpdateUserProfileDB(UUPM);
//System.out.println(updateData);
    if(updateData)
    {
        System.out.println();
        resp.sendRedirect(".?pname=userProfile");
    }
    else
    {
        System.out.println("Error");
        resp.sendRedirect(".?pname=userProfile");
    }
}
catch (Exception e)
{
    e.printStackTrace();;
}
    }
    private byte[] readByteFromInputstream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        int  ByteRead;
        byte[] data = new byte[1024];
        while((ByteRead=inputStream.read(data,0, data.length))!=-1)
        {
            buffer.write(data,0,ByteRead);
        }
        return buffer.toByteArray();
    }
}
