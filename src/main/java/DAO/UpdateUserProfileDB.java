package DAO;

import Model.UpdateUserProfileModel;
import Model.UserSignupModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateUserProfileDB {

    String sql = "UPDATE seeker SET First_name=?,Last_name=?,Email=?,Phone_Number=? ,Gender=?,Uimg=? WHERE id=?";

   public boolean UpdateUserProfileDB(UpdateUserProfileModel updateUserProfileModel) throws SQLException, ClassNotFoundException {
       Connection con = MyDatabase.getConnection();
       PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1,updateUserProfileModel.getFirstName());
        ps.setString(2,updateUserProfileModel.getLastName());
        ps.setString(3, updateUserProfileModel.getEmail());
        ps.setString(4,updateUserProfileModel.getPhone());
        ps.setString(5,updateUserProfileModel.getGender());
        ps.setBytes(6,updateUserProfileModel.getNewimg());
        ps.setString(7,updateUserProfileModel.getId());

        int updatestatus = ps.executeUpdate();

        return  updatestatus>0;
   }




}
