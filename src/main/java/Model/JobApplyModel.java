package Model;

public class JobApplyModel {

    private String Fname;
    private String Lname;
    private String Citizenship;
    private  String Date_of_Birth;
    private String Gender;
    private String pincode;
    private String city;
    private String Address;
    private String Phone;
    private String Email;
    private String jobname;
    private String Companyname;
    private String Collegename;
    private String Coursename;
    private String jobstatus;

    private byte[]  resume;

    public JobApplyModel(String Fname, String Lname, String Citizenship, String Date_of_Birth, String Gender, String Address, String Phone, String Email,String companyname, String jobname, byte[] resume, String Collegename, String Coursename, String pincode, String city,String jobstatus) {
        this.Fname = Fname;
        this.Lname = Lname;
        this.Citizenship = Citizenship;
        this.Date_of_Birth = Date_of_Birth;
        this.Gender = Gender;
        this.Address = Address;
        this.Phone = Phone;
        this.Email = Email;
        this.jobname = jobname;
        this.resume = resume;
        this.Companyname = companyname;
        this.Collegename = Collegename;
        this.Coursename = Coursename;
        this.pincode = pincode;
        this.city = city;
        this.jobstatus = jobstatus;

    }

    public String getFname() {
        return Fname;
    }

    public void setFname(String fname) {
        Fname = fname;
    }

    public String getLname() {
        return Lname;
    }

    public void setLname(String lname) {
        Lname = lname;
    }

    public String getCitizenship() {
        return Citizenship;
    }

    public void setCitizenship(String citizenship) {
        Citizenship = citizenship;
    }

    public String getDate_of_Birth() {
        return Date_of_Birth;
    }

    public void setDate_of_Birth(String date_of_Birth) {
        Date_of_Birth = date_of_Birth;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getJobname() {
        return jobname;
    }

    public void setJobname(String jobname) {
        this.jobname = jobname;
    }

    public String getCompanyname() {
        return Companyname;
    }

    public void setCompanyname(String companyname) {
        Companyname = companyname;
    }

    public byte[] getResume() {
        return resume;
    }

    public void setResume(byte[] resume) {
        this.resume = resume;
    }

    public String getCollegename() {
        return Collegename;
    }

    public void setCollegename(String collegename) {
        Collegename = collegename;
    }

    public String getCoursename() {
        return Coursename;
    }

    public void setCoursename(String coursename) {
        Coursename = coursename;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getJobstatus() {
        return jobstatus;
    }

    public void setJobstatus(String jobstatus) {
        this.jobstatus = jobstatus;
    }
}
