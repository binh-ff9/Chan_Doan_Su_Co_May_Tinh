package org.quan_li_su_co.he_thong_chan_doan_su_co_may_tinh.Models;

public class Category {
    private int categoryId;
    private String typeCategory;

    public Category() {
    }

    public Category(int categoryId, String typeCategory) {
        this.categoryId = categoryId;
        this.typeCategory = typeCategory;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getTypeCategory() {
        return typeCategory;
    }

    public void setTypeCategory(String typeCategory) {
        this.typeCategory = typeCategory;
    }



}
