package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models;

public class Software {
    private int softwareID;
    private String typeSoftware;
    private String funtion;

    public Software(String funtion, int softwareID, String typeSoftware) {
        this.funtion = funtion;
        this.softwareID = softwareID;
        this.typeSoftware = typeSoftware;
    }

    public Software() {
    }

    public int getSoftwareID() {
        return softwareID;
    }

    public void setSoftwareID(int softwareID) {
        this.softwareID = softwareID;
    }

    public String getTypeSoftware() {
        return typeSoftware;
    }

    public void setTypeSoftware(String typeSoftware) {
        this.typeSoftware = typeSoftware;
    }

    public String getFuntion() {
        return funtion;
    }

    public void setFuntion(String funtion) {
        this.funtion = funtion;
    }
}
