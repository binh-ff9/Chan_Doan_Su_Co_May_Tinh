module org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh {
    requires javafx.controls;
    requires javafx.fxml;


    opens org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh to javafx.fxml;
    exports org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh;
    exports org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh.Views;
    opens org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh.Views to javafx.fxml;
}