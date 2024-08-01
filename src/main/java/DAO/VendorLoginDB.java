package DAO;

import Model.VendorLoginModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VendorLoginDB {

    public boolean VendorLogin(VendorLoginModel vendorLoginModel) {
        try {
            Connection con = MyDatabase.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from vendor where Email=? and Password=?");

            psmt.setString(1, vendorLoginModel.getVendor_email());
            psmt.setString(2, vendorLoginModel.getVendor_password());
            ResultSet rs = psmt.executeQuery();
           return  rs.next();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }
}
