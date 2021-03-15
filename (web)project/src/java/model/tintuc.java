/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HaNoi
 */
public class tintuc {
    private int ma;
    private String tieude;
    private String loidan;
    private String anh;
    private String noidung;

    public tintuc() {
    }

    public tintuc(int ma, String tieude, String loidan, String anh, String noidung) {
        this.ma = ma;
        this.tieude = tieude;
        this.loidan = loidan;
        this.anh = anh;
        this.noidung = noidung;
    }

    public int getMa() {
        return ma;
    }

    public void setMa(int ma) {
        this.ma = ma;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getLoidan() {
        return loidan;
    }

    public void setLoidan(String loidan) {
        this.loidan = loidan;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }
    
}
