package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository;

import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.Category;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.DatabaseConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImple implements CategoryRepository{

    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();
        String sql = "SELECT * FROM Category";

        try (Connection connection = DatabaseConnection.getConnection();
                Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)){
            while (resultSet.next()){
                Category category = new Category();
                category.setCategoryId(resultSet.getInt("CategoryID"));
                category.setTypeCategory(resultSet.getString("Type_"));
                categories.add(category);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return categories;
    }
}
