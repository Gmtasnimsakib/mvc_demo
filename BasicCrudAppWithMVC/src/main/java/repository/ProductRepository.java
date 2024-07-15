package repository;

import model.Product;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductRepository {
    List<Product> products = new ArrayList<>();

    public List<Product> findAll() {
        return products;
    }

    public Product findById(Integer id) {
        for (Product product : products) {
            if (product.getId().equals(id))
                return product;
        }
        return null;
    }

    public void save(Product product) {
        products.add(product);
    }

    public void update(Product product) {
        Product existingProduct = findById(product.getId());
        if (existingProduct != null) {
            existingProduct.setId(product.getId());
            existingProduct.setName(product.getName());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setPrice(product.getPrice());
        } else throw new RuntimeException();
    }

    public void deleteById(Integer id) {
        products.removeIf(p -> p.getId().equals(id));
    }
}
