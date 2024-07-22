package DAO;

import Model.UserSignupModel;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserSignupDB {

    public boolean UserSignup(UserSignupModel userSignupModel) {
        boolean status = false;
        try {
            Connection con = MyDatabase.getConnection();
            String query = "INSERT INTO user (First_name, Last_name, Email, Phone_Number, Password, Confirm_Password, Gender,Uimg) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, userSignupModel.getFname());
            preparedStatement.setString(2, userSignupModel.getLname());
            preparedStatement.setString(3, userSignupModel.getEmail());
            preparedStatement.setString(4, userSignupModel.getPhone());
            preparedStatement.setString(5, userSignupModel.getPassword());
            preparedStatement.setString(6, userSignupModel.getConfirmPassword());
            preparedStatement.setString(7, userSignupModel.getGender());
            preparedStatement.setBytes(8, userSignupModel.getDp());

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
