package Model;

public class UpdateUserProfileModel {

    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String Gender;
    private byte[] newimg;

    public UpdateUserProfileModel(String id,String firstName, String lastName, String email, String phone, String gender, byte[] newimg) {

        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.Gender = gender;
        this.newimg = newimg;

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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}

