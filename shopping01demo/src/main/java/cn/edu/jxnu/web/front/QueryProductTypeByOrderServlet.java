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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/frontend/gettypebooks.do")
public class QueryProductTypeByOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();

        Map<String, Object> ret = new HashMap<>();
        ProductService productService = new ImplProductService();

        String bookTypeName = request.getParameter("bookTypeName");
        String strpageIndex = request.getParameter("pageIndex");
        String strpageSize = request.getParameter("pageSize");
//        System.out.println(bookTypeName);
        int pageIndex = Integer.parseInt(strpageIndex);
        int pageSize = Integer.parseInt(strpageSize);
        List<ProductDomain> typeList = null;
        try {

            if ("图书分类".equals(bookTypeName)) {
                typeList = productService.queryProductOrderID((pageIndex - 1) * pageSize, pageSize);
            } else {
                typeList = productService.queryProductTypeOrderId(bookTypeName, (pageIndex - 1) * pageSize, pageSize);
            }


            ret.put("success", true);
            ret.put("bookList", typeList);

        } catch (Exception e) {
            e.printStackTrace();
            ret.put("success", false);
        }
        //System.out.println(typeList);
        ObjectMapper objectMapper = new ObjectMapper();
        out.println(objectMapper.writeValueAsString(ret));
    }
}
