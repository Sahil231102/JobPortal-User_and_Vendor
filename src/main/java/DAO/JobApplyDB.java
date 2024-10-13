package DAO;

import Model.JobApplyModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JobApplyDB {

    public boolean checkIfAlreadyApplied(String s_id, String j_id) throws SQLException {
        boolean hasApplied = false;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Establish a database connection
            conn = MyDatabase.getConnection();

            // Query to check if the user has already applied for the job
            String query = "SELECT * FROM job_apply WHERE s_id = ? AND j_id = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, s_id);
            ps.setString(2, j_id);
            rs = ps.executeQuery();

            // If a record is found, the user has already applied
            if (rs.next()) {
                hasApplied = true;
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return hasApplied;
    }
    public  boolean JobApplyDB(JobApplyModel jobApplyModel) throws SQLException, ClassNotFoundException {

        String sql ="INSERT INTO job_apply (s_id,r_id,j_id,Resume,JobStatus) VALUES (?,?,?,?,?)";


          try
          {
              Connection con = MyDatabase.getConnection();
              PreparedStatement ps = con.prepareStatement(sql);

              ps.setString(1,jobApplyModel.getS_id());
              ps.setString(2,jobApplyModel.getR_id());
              ps.setString(3,jobApplyModel.getJ_id());
              ps.setBytes(4,jobApplyModel.getResume());
              ps.setString(5, jobApplyModel.getJobstatus());


              int Applyjob = ps.executeUpdate();


              return Applyjob > 0 ;
          }
          catch (Exception e)
          {
              e.printStackTrace();
          }
          return  false;

    }

}
