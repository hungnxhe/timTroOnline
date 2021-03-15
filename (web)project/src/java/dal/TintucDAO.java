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
import model.tintuc;

/**
 *
 * @author HaNoi
 */
public class TintucDAO extends DBContext {

    public List<tintuc> getAll() {
        List<tintuc> list = new ArrayList<>();
        String sql = "select * from tintuc";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                tintuc t = new tintuc(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                list.add(t);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
        public void insert(tintuc a) {
        String sql = "insert into tintuc values( ? , ? , ? , ? , ? )";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, a.getMa());
            st.setString(2, a.getTieude());
            st.setString(3, a.getLoidan());
            st.setString(4, a.getAnh());
            st.setString(5, a.getNoidung());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
        public void delete(String a) {
        String sql = "delete from tintuc where matin = "+a+"";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
            public List<tintuc> getAlbyid(String id) {
        List<tintuc> list = new ArrayList<>();
        String sql = "select * from tintuc where matin="+id+"";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                tintuc t = new tintuc(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                list.add(t);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
}
