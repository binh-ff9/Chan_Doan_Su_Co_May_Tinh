package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Views;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Category_App extends Application {
    @Override
    public void start(Stage stage) {
        try {
            FXMLLoader fxmlLoader = new FXMLLoader(Category_App.class.getResource("/org/quan_li_su_co/he_thong_chan_doan_su_co_may_tinh/FXML/Category_View.fxml"));
            Scene scene = new Scene(fxmlLoader.load());
            stage.setTitle("Quản lý Thể Loại");
            stage.setScene(scene);
            stage.show();
        } catch (Exception e) {
            e.printStackTrace(); // Thêm dòng này để biết chính xác lỗi gì
        }
    }


    public static void main(String[] args) {
        launch();
    }
}
