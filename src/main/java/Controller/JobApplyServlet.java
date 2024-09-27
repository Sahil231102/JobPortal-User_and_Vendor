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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "JobApplyServlet", value = "/JobApplyServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 15    // 15 MB
)
public class JobApplyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Retrieve parameters
          String s_id = req.getParameter("se_id");
          String j_id = req.getParameter("jo_id");
          String r_id = req.getParameter("re_id");
          String status = req.getParameter("status");
            Part resumePart = req.getPart("resume");
            byte[] resumeBytes = readBytesFromInputStream(resumePart.getInputStream());

            JobApplyModel jModel = new JobApplyModel(s_id,r_id,j_id,status,resumeBytes);
            JobApplyDB jDB = new JobApplyDB();
            boolean isJobApplied = jDB.JobApplyDB(jModel);


            if (isJobApplied) {
                System.out.println(r_id);
                System.out.println(s_id);
                System.out.println(j_id);
                resp.sendRedirect(".?pname=jobApplyData&s=ApplySuccessfully");
            } else {
                RequestDispatcher rd = req.getRequestDispatcher("jobApplyForm.jsp");
                req.setAttribute("errorMessage", "Failed to apply for the job. Please try again.");
                rd.forward(req, resp);
            }
        } catch (Exception e) {

          e.printStackTrace();
        }
    }

    private byte[] readBytesFromInputStream(InputStream inputStream) throws IOException {
        try (ByteArrayOutputStream buffer = new ByteArrayOutputStream()) {
            int bytesRead;
            byte[] data = new byte[1024];
            while ((bytesRead = inputStream.read(data, 0, data.length)) != -1) {
                buffer.write(data, 0, bytesRead);
            }
            return buffer.toByteArray();
        }
    }
}
