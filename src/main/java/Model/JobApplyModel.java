package Model;

public class JobApplyModel {

   private String j_id;
   private  String r_id;
   private  String s_id;
    private String jobstatus;

    private byte[]  resume;

    public JobApplyModel(String s_id,String r_id,String j_id,String jobstatus,byte[] resume) {
        this.r_id = r_id;
        this.j_id = j_id;
        this.s_id = s_id;
        this.jobstatus = jobstatus;
        this.resume = resume;

    }
    public String getJ_id() {
        return j_id;
    }

    public void setJ_id(String j_id) {
        this.j_id = j_id;
    }

    public String getR_id() {
        return r_id;
    }

    public void setR_id(String r_id) {
        this.r_id = r_id;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public String getJobstatus() {
        return jobstatus;
    }

    public void setJobstatus(String jobstatus) {
        this.jobstatus = jobstatus;
    }

    public byte[] getResume() {
        return resume;
    }

    public void setResume(byte[] resume) {
        this.resume = resume;
    }
}
