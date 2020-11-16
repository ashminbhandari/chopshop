package servlet;

import model.UserCart;
import service.CartService;
import service.CartServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/add-to-cart")
public class AddToCart extends HttpServlet {

    private CartService cartService = new CartServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //hardcoded because the jstl lib was not working with my intellij config
        String checkOutProduct0 = request.getParameter("checkOutProduct0");
        String checkOutProduct1 = request.getParameter("checkOutProduct1");
        String checkOutProduct2 = request.getParameter("checkOutProduct2");
        String checkOutProduct3 = request.getParameter("checkOutProduct3");
        String checkOutProduct4 = request.getParameter("checkOutProduct4");
        String checkOutProduct5 = request.getParameter("checkOutProduct5");
        String checkOutProduct6 = request.getParameter("checkOutProduct6");
        String checkOutProduct7 = request.getParameter("checkOutProduct7");


        if (checkOutProduct0 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct0));
        }
        if (checkOutProduct1 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct1));
        }
        if (checkOutProduct2 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct2));
        }
        if (checkOutProduct3 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct3));
        }
        if (checkOutProduct4 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct4));
        }
        if (checkOutProduct5 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct5));
        }
        if (checkOutProduct6 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct6));
        }
        if (checkOutProduct7 != null) {
            cartService.addToCart(Integer.parseInt(checkOutProduct7));
        }

        request.setAttribute("cartItems", cartService.getUserCart());
        request.getRequestDispatcher("/WEB-INF/view/cart.jsp").forward(request, response);

    }
}

