package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Controllers;

import javafx.beans.Observable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.Category;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository.CategoryRepository;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository.CategoryRepositoryImple;

import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

public class CategoryController implements Initializable {

    @FXML
    private TableView<Category> categoryTable;

    @FXML
    private TableColumn<Category, Integer> idColumn;

    @FXML
    private TableColumn<Category, String> typeColumn;

    private CategoryRepository categoryRepository = new CategoryRepositoryImple();



    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        // Cột ID -> lấy dữ liệu từ getCategoryId
        idColumn.setCellValueFactory(new PropertyValueFactory<>("categoryId"));

        // Cột Type -> lấy dữ liệu từ getTypeCategory
        typeColumn.setCellValueFactory(new PropertyValueFactory<>("typeCategory"));
        loadCategoryData();
    }
    private void loadCategoryData(){
        List<Category> categoryList = categoryRepository.getAllCategory();
        ObservableList<Category> categoryObservableList = FXCollections.observableArrayList(categoryList);
        categoryTable.setItems(categoryObservableList);
    }

    @FXML
    private void handleRefresh(){
        loadCategoryData();
    }
}
