package DAO;

import Model.UserLoginModel;
import Model.VendorLoginModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VendorLoginDB {
    public boolean VendorLogin(VendorLoginModel vendorLoginModel) {
        String sql = "select * from vendor where Email = ? and Password = ?";

        try
        {
            Connection con = MyDatabase.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, vendorLoginModel.getVendor_email());
            ps.setString(2, vendorLoginModel.getVendor_password());

            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

}
