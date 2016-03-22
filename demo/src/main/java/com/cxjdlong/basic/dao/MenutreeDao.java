package com.cxjdlong.basic.dao;


import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Menutree;

public interface MenutreeDao {
	
	List<Menutree> getMenutreeByFID(@Param(value = "id") String id);
	
	List<Menutree> getMenutreeByZID(@Param(value = "id") String id,@Param(value = "fid") String fid);
	
	List<Menutree> getMenutreeAllID();
	
	List<Menutree> getMenutreeByIdIn(@Param(value = "id") String id);
	
	Menutree getMenutreeById(String id);
	
	List<Menutree> getAllList();
	
	
}
