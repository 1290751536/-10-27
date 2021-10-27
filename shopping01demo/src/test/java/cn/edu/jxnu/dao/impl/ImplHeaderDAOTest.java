package cn.edu.jxnu.dao.impl;

import cn.edu.jxnu.dao.HeaderDAO;
import cn.edu.jxnu.dao.impl.ImplHeaderDAO;
import cn.edu.jxnu.domain.HeaderDomain;
import org.junit.Test;

import java.util.List;

public class ImplHeaderDAOTest {

    @Test
    public void getHeader() {
        HeaderDAO headerDAO=new ImplHeaderDAO();
        List<HeaderDomain> headerDomains =headerDAO.getHeader();
        System.out.println(headerDomains);
    }
}