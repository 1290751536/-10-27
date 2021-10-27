package cn.edu.jxnu.service.impl;

import cn.edu.jxnu.dao.ProductTypeDAO;
import cn.edu.jxnu.dao.impl.ImplProductTypeDAO;
import cn.edu.jxnu.domain.ProductTypeDomain;
import cn.edu.jxnu.service.ProductTypeService;

import java.util.List;

public class ImplProductTypeService implements ProductTypeService {
    private ProductTypeDAO productTypeDAO=new ImplProductTypeDAO();
    @Override
    public List<ProductTypeDomain> queryProductType() {
        return productTypeDAO.queryProductType();
    }
}
