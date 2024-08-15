package DAO;

import Model.UserSignupModel;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserSignupDB {

    public boolean UserSignup(UserSignupModel userSignupModel) {
        boolean status = false;
        try {
            Connection con = MyDatabase.getConnection();
            String query = "INSERT INTO seeker(fname, lname, Gender, dob, email, phoneNumber, Undergraduate, Postgraduate, CollegeName, simg, password ) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, userSignupModel.getFname());
            preparedStatement.setString(2, userSignupModel.getLname());
            preparedStatement.setString(3, userSignupModel.getGender());
            preparedStatement.setString(4, userSignupModel.getDOB());
            preparedStatement.setString(5, userSignupModel.getEmail());
            preparedStatement.setString(6, userSignupModel.getPhone());
            preparedStatement.setString(7,userSignupModel.getUG());
            preparedStatement.setString(8,userSignupModel.getPG());
            preparedStatement.setString(9,userSignupModel.getCollegeName());
            preparedStatement.setBytes(10, userSignupModel.getDp());
            preparedStatement.setString(11, userSignupModel.getPassword());



            int rowsAffected = preparedStatement.executeUpdate();
            if (rowsAffected > 0) {
                status = true;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
