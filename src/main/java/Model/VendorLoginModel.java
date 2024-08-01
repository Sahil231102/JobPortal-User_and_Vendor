package Model;

public class VendorLoginModel {
    private String vendor_email;
    private String vendor_password;
    public VendorLoginModel(String vendor_email, String vendor_password) {
        this.vendor_email = vendor_email;
        this.vendor_password = vendor_password;
    }

    public String getVendor_email() {
        return vendor_email;
    }

    public void setVendor_email(String vendor_email) {
        this.vendor_email = vendor_email;
    }

    public String getVendor_password() {
        return vendor_password;
    }

    public void setVendor_password(String vendor_password) {
        this.vendor_password = vendor_password;
    }
}
