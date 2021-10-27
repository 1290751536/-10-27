package cn.edu.jxnu.web.front;

import cn.edu.jxnu.domain.ProductDomain;
import cn.edu.jxnu.service.ProductService;
import cn.edu.jxnu.service.impl.ImplProductService;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "QueryProductNumberServlet", value = "/frontend/getbooksnumber.do")
public class QueryProductNumberServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        Map<String, Object> ret = new HashMap<>();
        ProductService productService = new ImplProductService();

        String bookTypeName = request.getParameter("bookTypeName");
//        System.out.println(bookTypeName);
        int totalCount = 1;
        try {
            if ("图书分类".equals(bookTypeName)) {
                totalCount = productService.queryAllProductNumber();
            } else {
                totalCount = productService.queryProductNumberByType(bookTypeName);
            }

            ret.put("success", true);
            ret.put("totalCount", totalCount);
            ret.put("tmp", bookTypeName);

        } catch (Exception e) {
            e.printStackTrace();
            ret.put("success", false);
        }
        //System.out.println(typeList);
        ObjectMapper objectMapper = new ObjectMapper();
        out.println(objectMapper.writeValueAsString(ret));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
