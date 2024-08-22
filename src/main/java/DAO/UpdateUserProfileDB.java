package DAO;

import Model.UpdateUserProfileModel;
import Model.UserSignupModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateUserProfileDB {

    String sql = "UPDATE seeker SET fname=?,lname=?,phoneNumber=? ,Gender=?,Undergraduate=?,Postgraduate=?, CollegeName=?,simg=? WHERE s_id=?";

   public boolean UpdateUserProfileDB(UpdateUserProfileModel updateUserProfileModel) throws SQLException, ClassNotFoundException {
       Connection con = MyDatabase.getConnection();
       PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1,updateUserProfileModel.getFirstName());
        ps.setString(2,updateUserProfileModel.getLastName());
        ps.setString(3,updateUserProfileModel.getPhone());
        ps.setString(4,updateUserProfileModel.getGender());
        ps.setString(5,updateUserProfileModel.getUndergraduate());
        ps.setString(6,updateUserProfileModel.getPostgraduate());
        ps.setString(7,updateUserProfileModel.getCollegename());
        ps.setBytes(8,updateUserProfileModel.getNewimg());
        ps.setString(9,updateUserProfileModel.getS_id());

        int updatestatus = ps.executeUpdate();

        return  updatestatus>0;
   }




}
