 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Home;

/**
 *
 * @author HaNoi
 */
public class AccountDAO extends DBContext {

    public Account getaccount(String mail, String pass) {
        String sql = "Select * from Account where mail = '" + mail + "' and pass = '" + pass + "' ";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean exitse(String mail) {
        String sql = "select * from Account where mail=?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, mail);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void insert(Account a) {
        String sql = "insert into Account values(?,?,?,?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, a.getAccountID());
            st.setString(2, a.getMail());
            st.setString(3, a.getPass());
            st.setString(4, a.getDiachID());
            st.setString(5, a.getSodt());
            st.setString(6, a.getMota());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account getaccountbyid(String id1) {
        String sql = "select * from account where acountid= '" + id1 + "'";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateaccount(String mail, String pass, String diachi, String dt, String mota, String id) {
        String sql = "update Account set mail='" + mail + "', pass='" + pass + "',diachi='" + diachi + "',sodt='" + dt + "',mota='" + mota + "'\n"
                + "where AcountID= '" + id + "'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Account> getAll() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account c = new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void deleteaccount(String id) {
        String sql = "delete from phongtro\n"
                + "where phong_ID='"+id+"'\n"
                + "delete from Account \n"
                + "where AcountID='"+id+"'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        AccountDAO d = new AccountDAO();
        String machu = "B088";
        String email = "hungkuku1207@gmail.com";
        String pass = "123";
        String sodt = "0889686712";
        String diachi = "namdinh number one";
        String mota = "2";
        d.updateaccount(email, pass, diachi, sodt, mota, machu);
    }
}
