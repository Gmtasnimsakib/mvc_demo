package service;

import model.Product;
import repository.ProductRepository;

import java.util.List;

public class ProductService {
    private final ProductRepository productRepository = new ProductRepository();

    public List<Product> allProducts() {
        return productRepository.findAll();
    }

    public void save(Product product) {
        productRepository.save(product);
    }

    public Product getProductById(Integer id) {
        return productRepository.findById(id);
    }

    public void updateProduct(Product product) {
        productRepository.update(product);
    }

    public void deleteProductById(Integer id) {
        productRepository.deleteById(id);
    }
}
