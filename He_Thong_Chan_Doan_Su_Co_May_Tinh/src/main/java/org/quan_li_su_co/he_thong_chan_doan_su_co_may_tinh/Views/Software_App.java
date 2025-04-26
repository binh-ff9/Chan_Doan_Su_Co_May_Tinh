package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Views;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Software_App extends Application {


    @Override
    public void start(Stage stage) throws Exception {
        try{
            FXMLLoader fxmlLoader = new FXMLLoader(Software_App.class.getResource("/org/quan_li_su_co/he_thong_chan_doan_su_co_may_tinh/FXML/Software_View.fxml"));
            Scene scene = new Scene(fxmlLoader.load());
            stage.setTitle("Quản lí Phần mềm");
            stage.setScene(scene);
            stage.show();
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        launch();
    }
}
