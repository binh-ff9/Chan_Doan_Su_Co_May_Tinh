package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Controllers;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models.Software;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository.CategoryRepositoryImple;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository.SoftwareRepository;
import org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Repository.SoftwareRepositoryImple;

import java.net.URL;
import java.util.List;
import java.util.ResourceBundle;

public class SoftwareController implements Initializable {

    @FXML
    private TableView<Software> softwareTableView;

    @FXML
    private TableColumn<Software, Integer> idColumn;

    @FXML
    private TableColumn<Software, String> typeColumn;

    @FXML
    private TableColumn<Software, String> funtionColumn;

    private SoftwareRepository softwareRepository = new SoftwareRepositoryImple();
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

        // private int softwareID;
        //    private String typeSoftware;
        //    private String funtion;
        idColumn.setCellValueFactory(new PropertyValueFactory<>("softwareID"));
        typeColumn.setCellValueFactory(new PropertyValueFactory<>("typeSoftware"));
        funtionColumn.setCellValueFactory(new PropertyValueFactory<>("funtion"));
        loadSoftwareData();
    }

    private void loadSoftwareData(){
        List<Software> softwares = softwareRepository.getAllSoftware();
        ObservableList<Software> softwareObservableList = FXCollections.observableArrayList(softwares);
        softwareTableView.setItems(softwareObservableList);
    }

}
