package Model;

import javax.mail.Message;

public class ContactusModel {

    private String Message;
    private String s_id;

    public ContactusModel(String Message ,String s_id)
    {
        this.Message = Message;
        this.s_id = s_id;

    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }
}
