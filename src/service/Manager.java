package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Manager implements IManager{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone XS", "Black", 2000, 200));
        products.put(2, new Product(2, "Iphone XS Max", "Black", 2500, 300));
        products.put(3, new Product(3, "Iphone XS", "Gold", 2100, 500));
        products.put(4, new Product(4, "Galaxy S20 Ultra", "Black", 3000, 500));
        products.put(5, new Product(5, "Galaxy S20", "Black", 2500, 500));
        products.put(6, new Product(6, "Galaxy S20", "Blue", 2500, 500));
    }

    @Override
    public List<Product> getProductList() {
        return new ArrayList<Product>(products.values());
    }

    @Override
    public void creatNewProduct(Product product) {
        products.put(product.getSeries(), product);
    }

    @Override
    public Product findProductBySeries(int series) {
        return products.get(series);
    }

    @Override
    public Product findProductByName(String name) {
        ArrayList<Product> productsList = (ArrayList<Product>) getProductList();
        for(Product product: productsList) {
            if (name.equals(product.getName())) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void updateProduct(int series, Product product) {
        products.put(series, product);
    }

    @Override
    public void deleteProduct(int series) {
        products.remove(series);
    }
}
