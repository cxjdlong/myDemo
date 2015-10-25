package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.cxjdlong.basic.model.Resourcefields;

public interface ResourceDao {
	
	List<Resourcefields> getResourceByFID(@Param(value = "id") String id);
	
	List<Resourcefields> getResourceByZID(@Param(value = "id") String id,@Param(value = "fid") String fid);
	
	List<Resourcefields> getResourceAllID();
	
	Resourcefields getResourceById(String id);
	
	List<Resourcefields> getAllList();
	
//	List<Resourcefields> getFind(@Param(value = "offset") int offset,@Param(value = "size") int size);
	List<Resourcefields> getFind(Map<String, String> map);
	int getFindTotal();
}
