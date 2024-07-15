package controller;

import model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.ProductService;

import java.util.List;

@Controller
//@RequestMapping("/products")
class ProductController {
    private final ProductService productService = new ProductService();

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

//        @RequestMapping( method = RequestMethod.GET)
    @GetMapping("/products")
    public String allProducts(Model model) {
        List<Product> products = productService.allProducts();
        model.addAttribute("products", products);
        return "list";
    }

    @GetMapping("/products/create")
    public String createForm(Model model) {
        model.addAttribute("product", new Product());
        return "create";
    }

    @PostMapping("/products/create")
    public String create(@ModelAttribute Product product) {
        productService.save(product);
        return "redirect:/products";
    }

    @GetMapping("products/edit/{id}")
    public String editForm(@PathVariable Integer id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "edit";
    }

    @PostMapping("/products/edit")
    public String updateExistingProduct(@ModelAttribute Product product) {
        productService.updateProduct(product);
        return "redirect:/products";
    }

    @GetMapping("/products/delete/{id}")
    public String delete(@PathVariable Integer id) {
        productService.deleteProductById(id);
        return "redirect:/products";
    }

    @GetMapping("/products/view/{id}")
    public String view(@PathVariable Integer id, Model model) {
        Product product = productService.getProductById(id);
        if (product == null) {
            model.addAttribute("errorMessage", "Product not found");
            return "error";
        }
        model.addAttribute("product", product);
        return "view";
    }

}