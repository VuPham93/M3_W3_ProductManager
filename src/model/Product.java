package model;

public class Product {
    private int series;
    private String name;
    private String color;
    private double price;
    private int quantity;

    public Product() {
    }

    public Product(int series, String name, String color, double price, int quantity) {
        this.series = series;
        this.name = name;
        this.color = color;
        this.price = price;
        this.quantity = quantity;
    }

    public int getSeries() {
        return series;
    }

    public void setSeries(int series) {
        this.series = series;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
