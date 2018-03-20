package com.controller;

import com.dao.ProductDao;
import com.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {

    @Autowired
    private ProductDao productdao;

    @ResponseBody
    @RequestMapping("select1")
    public List<Product> select1() throws  Exception{
         List<Product> products= productdao.getProduct();
        return  products;
    }

//    //添加
//    @RequestMapping("addproduct")
//    public  void addperson(HttpServletResponse response, Product product) throws Exception{
//
//        System.out.println("添加的用户名："+product.getPname());
//        PrintWriter out=response.getWriter();
//        Product p1=new Product(product.getPname(),product.getPtime(),product.getGid(),product.getPbz());
//        productdao.addProduct(p1);
//
//            out.write("2");
//            out.close();
//
//    }
//
//
//
//    //修改数据
//    @RequestMapping("updateproduct")
//    public void updateUser(HttpServletResponse response, @Param("pid") String pid, @Param("pname") String pname, @Param("pbz") String pbz) throws Exception{
//        PrintWriter out=response.getWriter();
//
//        String ppp=new String(pname.getBytes("ISO8859-1"),"utf-8");
//        System.out.println("修改："+pid);
//        Product p1=new Product(Integer.parseInt(pid),pname,pbz);
//        productdao.updateProduct(p1);
//
//            out.close();
//
//    }





}
