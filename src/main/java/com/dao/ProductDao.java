package com.dao;

import com.entity.Product;

import java.util.List;

public interface ProductDao {

    public Product getProductById(int pid);
    public List<Product> getProduct();
    public void deleteProductById(int pid);
    public void updateProduct(Product product);
    public void addProduct(Product product);

    public  Product getproductandgoods(int pid);


}
