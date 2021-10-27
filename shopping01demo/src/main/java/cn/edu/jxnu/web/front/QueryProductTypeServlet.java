package cn.edu.jxnu.web.front;


import cn.edu.jxnu.domain.ProductTypeDomain;

import cn.edu.jxnu.service.ProductTypeService;

import cn.edu.jxnu.service.impl.ImplProductTypeService;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "QueryProductTypeServlet", value = "/frontend/gettype.do")
public class QueryProductTypeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HashMap<String,Object> model=new HashMap<String,Object>();

        response.setContentType("application/json;charset=utf-8");
        PrintWriter out=response.getWriter();
        ProductTypeService productTypeService=new ImplProductTypeService();
     //图书类型
        List<ProductTypeDomain> typeList=null;
        try {


            typeList=productTypeService.queryProductType();

            model.put("success",true);
            model.put("typeList",typeList);

        } catch (Exception e) {
            e.printStackTrace();
            model.put("success",false);
        }
        //System.out.println(typeList);
        ObjectMapper objectMapper=new ObjectMapper();
        out.println(objectMapper.writeValueAsString(model));
    }
}
