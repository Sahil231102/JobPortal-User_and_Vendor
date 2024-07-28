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
    private static final Logger logger = Logger.getLogger(JobApplyServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Retrieve parameters
            String fname = req.getParameter("fname");
            String lname = req.getParameter("lname");
            String gender = req.getParameter("Gender");
            String citizenship = req.getParameter("citizenship");
            String dateOfBirth = req.getParameter("DateOfBirth");
            String address = req.getParameter("Address");
            String pincode = req.getParameter("pincode");
            String city = req.getParameter("city");
            String phone = req.getParameter("phone");
            String email = req.getParameter("email");
            String jobname = req.getParameter("jobname");
            String companyname = req.getParameter("companyname");
            String collegename = req.getParameter("collegename");
            String coursename = req.getParameter("coursename");

            // Validate parameters
            if (fname == null || lname == null || email == null || jobname == null || companyname == null) {
                throw new ServletException("Missing required form fields.");
            }

            Part resumePart = req.getPart("resume");
            byte[] resumeBytes = readBytesFromInputStream(resumePart.getInputStream());

            // Create JobApplyModel object
            JobApplyModel jModel = new JobApplyModel(fname, lname, citizenship, dateOfBirth, gender, address, phone, email, jobname, companyname, resumeBytes, collegename, coursename, pincode, city);

            // Save application to database
            JobApplyDB jDB = new JobApplyDB();
            boolean isJobApplied = jDB.JobApplyDB(jModel);

            // Redirect or forward based on the result
            if (isJobApplied) {
                resp.sendRedirect("Page/Show_Apply_Job.jsp");
            } else {
                RequestDispatcher rd = req.getRequestDispatcher("jobApplyForm.jsp");
                req.setAttribute("errorMessage", "Failed to apply for the job. Please try again.");
                rd.forward(req, resp);
            }
        } catch (SQLException | ClassNotFoundException e) {
            logger.log(Level.SEVERE, "Database error: " + e.getMessage(), e);
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        } catch (IOException e) {
            logger.log(Level.SEVERE, "I/O error: " + e.getMessage(), e);
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An I/O error occurred.");
        } catch (ServletException e) {
            logger.log(Level.SEVERE, "Servlet error: " + e.getMessage(), e);
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "A required parameter is missing or invalid.");
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
