package Model;

public class UserSignupModel {
    private String fname;
    private String lname;
    private String gender;
    private String DOB;
    private String email;
    private String phone;
    private String UG;
    private String PG;
    private String CollegeName;
    private String password;
    private byte[] dp;

    public UserSignupModel(String fname, String lname, String DOB, String gender,  String email, String phone, String UG,String PG,String CollegeName, String password ,byte[] dp) {
        this.fname = fname;
        this.lname = lname;
        this.gender = gender;
        this.DOB = DOB;
        this.email = email;
        this.phone = phone;
        this.UG = UG;
        this.PG = PG;
        this.CollegeName = CollegeName;
        this.password = password;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUG() {
        return UG;
    }

    public void setUG(String UG) {
        this.UG = UG;
    }

    public String getPG() {
        return PG;
    }

    public void setPG(String PG) {
        this.PG = PG;
    }

    public String getCollegeName() {
        return CollegeName;
    }

    public void setCollegeName(String collegeName) {
        CollegeName = collegeName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte[] getDp() {
        return dp;
    }

    public void setDp(byte[] dp) {
        this.dp = dp;
    }
}