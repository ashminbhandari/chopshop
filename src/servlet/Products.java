package servlet;

import service.ProductService;
import service.ProductServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/products")
public class Products extends HttpServlet {

    private ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
//        out.println(productService.getProducts());
        request.setAttribute("products", productService.getProducts());
        request.getRequestDispatcher("/WEB-INF/view/products.jsp").forward(request, response);
    }
}
