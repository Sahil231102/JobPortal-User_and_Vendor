package Model;

public class VendorSignupModel {

    private  String Ownername;
    private String Company_Name;
    private String Email;
    private String phone;
    private String Password;
    private String Company_Address;
    private String state;
    private String Country;
    private String city;
    private String pincode;
    private byte[] Companyimg;


    public VendorSignupModel(String Ownername, String Companyname, String Email, String Phone, String Password, String Company_Address, String state, String Country, String city, String pincode, byte[] Companyimg) {
        this.Ownername = Ownername;
        this.Company_Name = Companyname;
        this.Email = Email;
        this.phone = Phone;
        this.Password = Password;
        this.Company_Address = Company_Address;
        this.state = state;
        this.Country = Country;
        this.city = city;
        this.pincode = pincode;
        this.Companyimg = Companyimg;

    }

    public String getOwnername() {
        return Ownername;
    }

    public void setOwnername(String ownername) {
        Ownername = ownername;
    }

    public String getCompany_Name() {
        return Company_Name;
    }

    public void setCompany_Name(String company_Name) {
        Company_Name = company_Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getCompany_Address() {
        return Company_Address;
    }

    public void setCompany_Address(String company_Address) {
        Company_Address = company_Address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String country) {
        Country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public byte[] getCompanyimg() {
        return Companyimg;
    }

    public void setCompanyimg(byte[] companyimg) {
        Companyimg = companyimg;
    }
}
