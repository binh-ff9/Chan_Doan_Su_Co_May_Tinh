package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {
    private static final String PROPERTIES_FILE = "/database.properties";

    public static Connection getConnection() throws SQLException{
        Properties properties = new Properties();

        try (InputStream inputStream = DatabaseConnection.class.getResourceAsStream(PROPERTIES_FILE)){
            if (inputStream == null){
                throw new IOException("Không tìm thấy file cấu hình" + PROPERTIES_FILE);
            }
            properties.load(inputStream);
        } catch (IOException e){
            throw new RuntimeException("Lỗi khi đọc file cấu hình database!",e);
        }
        String url  = properties.getProperty("url");
        String username = properties.getProperty("username");
        String password = properties.getProperty("password");

        System.out.println("Kết nối database thành công");
        return DriverManager.getConnection(url,username,password);
    }

    public static void main(String[] args) throws SQLException {
        getConnection();
    }
}
