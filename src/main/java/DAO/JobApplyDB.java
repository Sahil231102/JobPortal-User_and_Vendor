package DAO;

import Model.JobApplyModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JobApplyDB {

    public  boolean JobApplyDB(JobApplyModel jobApplyModel) throws SQLException, ClassNotFoundException {

        String sql ="INSERT INTO job_apply (First_name, Last_name, Gender, Citizenship, Date_Of_Birth, Address, Pincode, City, Phone_number, Email, Resume,JobName, Company_name, CollegeName, Coursename) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


          try
          {
              Connection con = MyDatabase.getConnection();
              PreparedStatement ps = con.prepareStatement(sql);

              ps.setString(1,jobApplyModel.getFname());
              ps.setString(2,jobApplyModel.getLname());
              ps.setString(3,jobApplyModel.getGender());
              ps.setString(4,jobApplyModel.getCitizenship());
              ps.setString(5, jobApplyModel.getDate_of_Birth());
              ps.setString(6, jobApplyModel.getAddress());
              ps.setString(7,jobApplyModel.getPincode());
              ps.setString(8,jobApplyModel.getCity());
              ps.setString(9,jobApplyModel.getPhone());
              ps.setString(10,jobApplyModel.getEmail());
              ps.setBytes(11,jobApplyModel.getResume());
              ps.setString(12,jobApplyModel.getJobname());
              ps.setString(13,jobApplyModel.getCompanyname());
              ps.setString(14,jobApplyModel.getCollegename());
              ps.setString(15, jobApplyModel.getCoursename());

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
