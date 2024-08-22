package Model;

public class UpdateUserProfileModel {

    private String s_id;
    private String firstName;
    private String lastName;
    private String phone;
    private String Gender;
    private String Undergraduate;
    private String Postgraduate;
    private String Collegename;
    private byte[] newimg;

    public UpdateUserProfileModel(String s_id,String firstName, String lastName,  String phone,String undergraduate,String postgraduate,String collegename, String gender, byte[] newimg) {

        this.s_id = s_id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.Collegename = collegename;
        this.Postgraduate = postgraduate;
        this.Undergraduate = undergraduate;
        this.phone = phone;
        this.Gender = gender;
        this.newimg = newimg;

    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getUndergraduate() {
        return Undergraduate;
    }

    public void setUndergraduate(String undergraduate) {
        Undergraduate = undergraduate;
    }

    public String getPostgraduate() {
        return Postgraduate;
    }

    public void setPostgraduate(String postgraduate) {
        Postgraduate = postgraduate;
    }

    public String getCollegename() {
        return Collegename;
    }

    public void setCollegename(String collegename) {
        Collegename = collegename;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public byte[] getNewimg() {
        return newimg;
    }

    public void setNewimg(byte[] newimg) {
        this.newimg = newimg;
    }


}

