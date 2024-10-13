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
            // Retrieve form parameters
            String s_id = req.getParameter("se_id");
            String j_id = req.getParameter("jo_id");
            String r_id = req.getParameter("re_id");
            String status = req.getParameter("status");
            Part resumePart = req.getPart("resume");
            byte[] resumeBytes = readBytesFromInputStream(resumePart.getInputStream());

            // Create JobApplyModel object
            JobApplyModel jModel = new JobApplyModel(s_id, r_id, j_id, status, resumeBytes);
            JobApplyDB jDB = new JobApplyDB();

            // Check if the user has already applied for this job
            boolean hasAlreadyApplied = jDB.checkIfAlreadyApplied(s_id, j_id);

            if (hasAlreadyApplied) {
                // If user already applied, send error message

                resp.sendRedirect(req.getContextPath() + ".?pname=Home&s=AlreadyApply");

            } else {
                // If user hasn't applied yet, proceed with application
                boolean isJobApplied = jDB.JobApplyDB(jModel);

                if (isJobApplied) {
                    // Redirect on successful job application
                    resp.sendRedirect(".?pname=jobApplyData&s=ApplySuccessfully");
                } else {
                    // Forward to form with error message on failure
                    req.setAttribute("errorMessage", "Failed to apply for the job. Please try again.");
                    RequestDispatcher rd = req.getRequestDispatcher("jobApplyForm.jsp");
                    rd.forward(req, resp);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "An error occurred while processing your application.");
            RequestDispatcher rd = req.getRequestDispatcher("jobApplyForm.jsp");
            rd.forward(req, resp);
        }
    }

    // Helper method to read bytes from the resume input stream
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
