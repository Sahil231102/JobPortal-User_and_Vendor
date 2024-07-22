package DAO;

import Model.VendorSignupModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VendorSignUpDB {

    public boolean VendorSignUpDB(VendorSignupModel vendorSignupModel) throws SQLException, ClassNotFoundException {
       String sql ="INSERT INTO vendor (Company_Name, Email, Phone_Number, state, City, Country, Pincode, Password, CompanyImg, OwnerName, Company_Address) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try
       {
           Connection con = MyDatabase.getConnection();
           PreparedStatement ps = con.prepareStatement(sql);

           ps.setString(1, vendorSignupModel.getCompany_Name());
           ps.setString(2, vendorSignupModel.getEmail());
           ps.setString(3, vendorSignupModel.getPhone());
           ps.setString(4, vendorSignupModel.getState());
           ps.setString(5, vendorSignupModel.getCity());
           ps.setString(6, vendorSignupModel.getCountry());
           ps.setString(7, vendorSignupModel.getPincode());
           ps.setString(8, vendorSignupModel.getPassword());
           ps.setBytes(9, vendorSignupModel.getCompanyimg());
           ps.setString(10, vendorSignupModel.getOwnername());
           ps.setString(11,vendorSignupModel.getCompany_Address());

           int VendorSignUpData = ps.executeUpdate();
           return VendorSignUpData > 0;
       }
       catch (Exception e)
       {
           System.out.println(e);
       }

        return false;
    }

}
