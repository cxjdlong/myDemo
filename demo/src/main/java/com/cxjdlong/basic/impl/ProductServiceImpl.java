package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.ProductDao;
import com.cxjdlong.basic.model.CreateProduct;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.ProductServiceI;

@Service("productService")
public class ProductServiceImpl implements ProductServiceI {

	private ProductDao productDao;
	
	public ProductDao getProductDao() {
		return productDao;
	}
	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public void delectByID(String id) {
		productDao.delectByID(id);
	}

	@Override
	public void updateByID(CreateProduct pro) {
		productDao.updateByID(pro);
	}

	@Override
	public CreateProduct selectByID(int id) {
		
		return productDao.selectByID(id);
	}

	@Override
	public void add(CreateProduct pro) {
		productDao.add(pro);
	}

	@Override
	public Pager<CreateProduct> find() {
		
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = productDao.getFindTotal();

		List<CreateProduct> dates = productDao.getFind(map);
		Pager<CreateProduct> pager = new Pager<CreateProduct>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}
	@Override
	public Pager<CreateProduct> selectFun(String selectKey) {
		List<CreateProduct> dates = productDao.selectFun("%"+selectKey+"%");
		Pager<CreateProduct> pager = new Pager<CreateProduct>();
		pager.setDates(dates);
		return pager;
	}

}
