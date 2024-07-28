package Controller;

import DAO.JobApplyDB;
import Model.JobApplyModel;

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
import java.sql.SQLException;

@WebServlet(name = "JobApplyServlet",value = "/JobApplyServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 15    // 15 MB
)
public class JobApplyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);

        try {
            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String Gender = req.getParameter("Gender");
            String citizenship = req.getParameter("citizenship");
            String DateOfBirth = req.getParameter("DateOfBirth");
            String Address = req.getParameter("Address");
            String pincode = req.getParameter("pincode");
            String city = req.getParameter("city");
            String phone = req.getParameter("phone");
            String email = req.getParameter("email");
            String jobname = req.getParameter("jobname");
            String companyname = req.getParameter("companyname");
            String collegename = req.getParameter("collegename");
            String coursename = req.getParameter("coursename");

            System.out.println(fname);
            System.out.println(lname);
            System.out.println(Gender);
            System.out.println(citizenship);
            System.out.println(DateOfBirth);
            System.out.println(Address);
            System.out.println(pincode);
            System.out.println(phone);
            System.out.println(city);
            System.out.println(email);
            System.out.println(jobname);
            System.out.println(companyname);
            System.out.print(collegename);
            System.out.println(coursename);
            Part Resume = req.getPart("resume");
            InputStream inputStream = Resume.getInputStream();
            byte[] ResumeImges = readByteFromInputstream(inputStream);

            JobApplyModel jModel = new JobApplyModel(fname,lname,citizenship,DateOfBirth,Gender,Address,phone,email,jobname,companyname,ResumeImges,collegename,coursename,pincode,city);
            JobApplyDB jDB = new JobApplyDB();
            boolean finalJobApply = jDB.JobApplyDB(jModel);

            if(finalJobApply)
            {
                resp.sendRedirect("/Page/Show_Apply_Job.jsp");
            }
            else
            {
                RequestDispatcher rd = req.getRequestDispatcher("/Page/Job_Apply.jsp");
                rd.include(req,resp);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
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
