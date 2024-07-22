package Model;

public class UserSignupModel {
    private String fname;
    private String lname;
    private String email;
    private String password;
    private String confirmPassword;
    private String phone;
    private String gender;
    private byte[] dp;

    public UserSignupModel(String fname, String lname, String email, String password, String confirmPassword, String phone, String gender, byte[] dp) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.phone = phone;
        this.gender = gender;
        this.dp = dp;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public byte[] getDp() {
        return dp;
    }

    public void setDp(byte[] dp) {
        this.dp = dp;
    }
}