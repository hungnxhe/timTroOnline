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
import model.Home;

public class homeDAO extends DBContext {

    public void insert(Home a) {
        String sql = "insert into phongtro values(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, a.getHome_id());
            st.setString(2, a.getAccount_id());
            st.setString(3, a.getImage());
            st.setString(4, a.getImage1());
            st.setString(5, a.getImage2());
            st.setDouble(6, a.getPrice());
            st.setString(7, a.getMota());
            st.setString(8, a.getStatus());
            st.setString(9, a.getDate());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean exits(String home_id) {
        String sql = "select * from phongtro where phongID= ? ";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, home_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public List<Home> getAll() {
        List<Home> list = new ArrayList<>();
        String sql = "select * from phongtro";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Home c = new Home(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void delete(String id) {
        String sql = "delete from phongtro\n"
                + "where phongID='" + id + "'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Home> getAllbyid(String id) {
        List<Home> list = new ArrayList<>();
        String sql = "select * from phongtro\n"
                + "where phong_ID='" + id + "'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Home c = new Home(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public boolean update(String home_id) {
        String sql = "select * from phongtro where phongID= ? ";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, home_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public Home gethome(String id) {
        String sql = "select * from phongtro where phongID='" + id + "'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Home c = new Home(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void updatehome(Home a) {
        String sql = "update phongtro set image= ? , image1= ? , image2= ? ,price= ? , mota= ? , status= ? ,adddate= ? \n"
                + "where phongID= ? ";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, a.getImage());
            st.setString(2, a.getImage1());
            st.setString(3, a.getImage2());
            st.setDouble(4, a.getPrice());
            st.setString(5, a.getMota());
            st.setString(6, a.getStatus());
            st.setString(7, a.getDate());
            st.setString(8, a.getHome_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Home> getListByPage(List<Home> list,
            int start, int end) {
        List<Home> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Home> searchBYprice(String search) {
        List<Home> list = new ArrayList<>();
        double a = 0,b = 0;
        try {
             a = Double.valueOf(search) - 200000;
             b = Double.valueOf(search) + 200000;
        } catch (Exception e) {
        }
        String sql = "select * from phongtro\n"
                + " where price > " + a + " and price <" + b + "";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Home c = new Home(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Home> searchBYaddress(String search) {
        List<Home> list = new ArrayList<>();
        String sql = "select p.phongID,p.phong_ID,p.image,p.image1,p.image2,p.price,p.mota,p.status,p.adddate from phongtro p,Account a\n"
                + "where p.phong_ID=a.AcountID and a.diachi like'%"+search+"%'";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Home c = new Home(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        homeDAO d = new homeDAO();
        Home h = new Home();
        h = d.gethome("nha08");
        System.out.println(h.getHome_id());
    }
}
