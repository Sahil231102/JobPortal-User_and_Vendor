package DAO;
import Model.UserLoginModel;
import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class UserLoginDB {
    public boolean userLogin(UserLoginModel userLoginModel) {
        String sql = "select * from seeker where email = ? and password = ?";

        try
        {

            Connection con = MyDatabase.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, userLoginModel.getEmail());
            ps.setString(2, userLoginModel.getPassword());

            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}
