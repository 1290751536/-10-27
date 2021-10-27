package cn.edu.jxnu.dao.impl;

import cn.edu.jxnu.dao.ProductDAO;
import cn.edu.jxnu.domain.ProductDomain;
import cn.edu.jxnu.domain.ProductTypeDomain;
import cn.edu.jxnu.domain.PublishDomain;
import cn.edu.jxnu.util.JdbcUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.net.PortUnreachableException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ImplProdutctDAO implements ProductDAO {
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(JdbcUtils.getDataSource());


    public class ProductDomainRowMapper implements RowMapper<ProductDomain> {
        @Override
        public ProductDomain mapRow(ResultSet rs, int rowNum) throws SQLException {

            ProductDomain productDomain = new ProductDomain();
            ProductTypeDomain productTypeDomain = new ProductTypeDomain();
            PublishDomain publishDomain = new PublishDomain();

            productDomain.setBookId(rs.getLong("book_id"));
            productDomain.setBookName(rs.getString("book_name"));
            productDomain.setBookImage(rs.getString("book_image"));
            productDomain.setBookIntroduction(rs.getString("book_introduction"));
            productDomain.setBookIsbn(rs.getString("book_isbn"));
            productDomain.setPrice(rs.getFloat("price"));
            productDomain.setDiscount(rs.getFloat("discount"));

            productTypeDomain.setBookTypeId(rs.getInt("book_type_id"));
            productTypeDomain.setBookTypeName(rs.getString("book_type_name"));
            productDomain.setProductTypeDomain(productTypeDomain);

            publishDomain.setPublishingId(rs.getInt("publishing_id"));
            publishDomain.setPublishingName(rs.getString("publishing_name"));
            productDomain.setPublishDomain(publishDomain);


            return productDomain;
        }
    }

    @Override
    /**
     *  根据销售量显示记录
     */
    public List<ProductDomain> queryProductOrderSaleNum(int index, int pageSize) throws Exception {
        List<ProductDomain> productList = null;


        String sql = "select  * \n" +
                "from bookinfoview order by book_sale_num desc \n" +
                "limit ?,?";

        productList = jdbcTemplate.query(sql, new ProductDomainRowMapper(), index, pageSize);

        return productList;
    }

    public List<ProductDomain> queryProductOrderID(int index, int pageSize) throws Exception {

        List<ProductDomain> productList = null;


        String sql = "select  *\n" +
                "from bookinfoview order by book_id desc \n" +
                "limit ?,?";

        productList = jdbcTemplate.query(sql, new ProductDomainRowMapper(), index, pageSize);

        return productList;
    }

    @Override
    public List<ProductDomain> queryProductTypeOrderID(String bookTypeName, int index, int pageSize) throws Exception {
        List<ProductDomain> productList = null;

        String sql = "SELECT * FROM bookinfoview\n" +
                "WHERE book_type_name=?\n" +
                "ORDER BY book_id DESC\n" +
                "LIMIT ?,?";
        productList = jdbcTemplate.query(sql, new ProductDomainRowMapper(), bookTypeName, index, pageSize);

        return productList;
    }

    public List<ProductDomain> queryProductOrderRand(int index, int pageSize) throws Exception {
        List<ProductDomain> productList = null;


        String sql = "select  * \n" +
                "from bookinfoview order by rand() desc \n" +
                "limit ?,?";

        productList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<ProductDomain>(ProductDomain.class), index, pageSize);

        return productList;
    }

    public List<ProductDomain> queryProductOrderSaleNum1(int index, int pageSize) throws Exception {
        List<ProductDomain> productList = null;


        String sql = "select  * \n" +
                "from bookinfoview order by book_sale_num desc \n" +
                "limit ?,?";

        productList = jdbcTemplate.query(sql, new ProductDomainRowMapper(), index, pageSize);

        return productList;
    }

    @Override
    public int queryAllProductNumber() {
        String sql = "SELECT COUNT(*) AS cnt FROM book_table";
        Integer cnt = jdbcTemplate.queryForObject(sql, Integer.class);
        return cnt.intValue();
    }

    @Override
    public int queryProductNumberByType(String bookTypeName) {
        String sql = "SELECT COUNT(*) AS cnt FROM bookinfoview\n" +
                "WHERE book_type_name = ?";
        Integer cnt = jdbcTemplate.queryForObject(sql, Integer.class, bookTypeName);
        return cnt.intValue();
    }
}
