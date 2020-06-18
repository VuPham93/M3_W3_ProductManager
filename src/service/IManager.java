package service;

import model.Product;

import java.util.List;

public interface IManager {
    List<Product> getProductList();

    void creatNewProduct(Product product);

    Product findProductBySeries(int series);

    Product findProductByName(String name);

    void updateProduct(int series, Product product);

    void deleteProduct(int series);
}
