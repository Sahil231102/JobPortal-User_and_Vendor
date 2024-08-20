package DAO;

import Model.JobApplyModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JobApplyDB {

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
