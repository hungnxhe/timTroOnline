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
public class Account {
    private String accountID,mail,pass,diachID,sodt,mota;

    public Account() {
    }

    public Account(String accountID, String mail, String pass, String diachID, String sodt, String mota) {
        this.accountID = accountID;
        this.mail = mail;
        this.pass = pass;
        this.diachID = diachID;
        this.sodt = sodt;
        this.mota = mota;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDiachID() {
        return diachID;
    }

    public void setDiachID(String diachID) {
        this.diachID = diachID;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }
            
}
