module org.quanligiangvien.he_thong_chan_doan_su_co_may_tinh {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh to javafx.fxml;
    exports org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh;
    exports org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Views;
    opens org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Views to javafx.fxml;

    opens org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models to javafx.base;
    opens org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Controllers to javafx.fxml;

}