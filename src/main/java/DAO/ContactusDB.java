package DAO;

import Model.ContactusModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactusDB {

    public Boolean ContactusDB(ContactusModel contactusModel)
    {
        String sql = "INSERT INTO contact_us(s_id, Message) VALUES (?,?)";

        try
        {
            Connection con  = MyDatabase.getConnection();
            PreparedStatement psmt = con.prepareStatement(sql);

            psmt.setString(1,contactusModel.getS_id());
            psmt.setString(2,contactusModel.getMessage());


            int contactInsert = psmt.executeUpdate();
            return contactInsert > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
