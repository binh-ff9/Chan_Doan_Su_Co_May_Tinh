package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository;

import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.DatabaseConnection;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.Software;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SoftwareRepositoryImple implements SoftwareRepository {

    @Override
    public List<Software> getAllSoftware() {
        List<Software> softwares = new ArrayList<>();
        String sql = "SELECT * FROM Software";

        try (Connection connection = DatabaseConnection.getConnection();
                  Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql);){
            while (resultSet.next()){
                Software software = new Software();
                software.setSoftwareID(resultSet.getInt("SoftwareID"));
                software.setTypeSoftware(resultSet.getString("Type_Software"));
                software.setFuntion(resultSet.getString("Funtion"));
                softwares.add(software);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return softwares;
    }
}
