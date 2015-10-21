package cxjdlong.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.cxjdlong.basic.model.Createcompanyinfo;
import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.Resourcefields;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.model.User;
import com.cxjdlong.basic.service.CompanyServiceI;
import com.cxjdlong.basic.service.NewsServiceI;
import com.cxjdlong.basic.service.ResourceServiceI;
import com.cxjdlong.basic.service.UserServiceI;
import com.cxjdlong.basic.util.PubFunction;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class TestMybatis {
	
	@Test
	public void test1() {
		User u = userService.getUserById("2");
		System.out.println(JSON.toJSONStringWithDateFormat(u, "yyyy-mm-yy HH:mm:ss"));
	}

	@Test
	public void test2(){
		String resourceString = "<1>1234<2>1234<3>1234<4>1234<5>1234<6>1234<7>1234<8>1234<9>1234<10>1234<11>1234<12>1234<13>1234<14>1234<15>1234<16>1234<17>1234<18>1234<19>1234<20>1234<21>1234<22>1234<23>1234<24>1234<25>1234<26>1234<27>1234<28>1234<29>1234<30>1234";
		String id = PubFunction.getZhengzestr(resourceString);
		id = PubFunction.getsubStr(id, 0, id.length()-1);
		System.out.println("selectID="+id);
//		Map<String,Object> params = new HashMap<String,Object>();
//		params.put("id", id);
		ArrayList arraylist = new ArrayList();
		List<Resourcefields> rf = resourceService.getResourceFID(id);
		System.out.println(">>>"+rf.size());
		for(int i=0;i<rf.size();i++){
			System.out.println(">>>"+ rf.get(i).getFieldName());
			System.out.println("-----------"+rf.get(i).getId());
			List<Resourcefields> rf2 = resourceService.getResourceZID(id, rf.get(i).getId()+"");
			arraylist.add(i,rf2);
			for(int b=0 ; b<rf2.size();b++){
				System.out.println("---"+rf2.get(b).getFieldName());
			}
		}
		
		System.out.println("-------------------------- start  ------------------------------");
		System.out.println("MenuList>\n");
		for (int i = 0;i<arraylist.size();i++){
			
			System.out.println(arraylist.get(i));
		}
		
		
//		System.out.println(JSON.toJSONStringWithDateFormat(rf,"yyyy-mm-yy HH:mm:ss"));
//		
//		Resourcefields rf2 = resourceService.getRestourceByID("22");
//		System.out.println(JSON.toJSONStringWithDateFormat(rf2,"yyyy-mm-yy HH:mm:ss"));
//		List<Resourcefields> a = resourceService.getAllList();
//		System.out.println(a.size());
//		System.out.println(JSON.toJSONStringWithDateFormat(a,"yyyy-mm-yy HH:mm:ss"));
	}
	@Test
	public void test3(){
		SystemContext.setPageOffset(2);
		SystemContext.setPageSize(10);
		Pager<Resourcefields> mp = resourceService.find();
		int mplistSize = mp.getDates().size();
		System.out.println("size = "+mplistSize);
		System.out.println(JSON.toJSONStringWithDateFormat(mp,"yyyy-mm-yy HH:mm:ss"));
		
	}
	
	@Test
	public void test4(){
		SystemContext.setPageOffset(34);
		SystemContext.setPageSize(10);
		Pager<Createnews> mp = newsService.find();

		int mplistSize = mp.getDates().size();
		System.out.println("size = "+mplistSize);
//		for (int a=0 ;a<mp.getDates().size();a++){
//			System.out.println("--"+JSON.toJSONStringWithDateFormat(mp.getDates().get(a),"yyyy-mm-yy HH:mm:ss")+"\n");
//		}
//		System.out.println(JSON.toJSONStringWithDateFormat((mp.getDates().get(0)).getNewstypelist(),"yyyy-mm-yy HH:mm:ss"));
		System.out.println(JSON.toJSONStringWithDateFormat(mp.getDates(),"yyyy-mm-yy HH:mm:ss"));
	}
	
	@Test
	public void test5(){
		Createcompanyinfo company =new Createcompanyinfo();
		company = companyService.getcompanyByID(2);
		System.out.println(JSON.toJSONStringWithDateFormat(company,"yyyy-mm-yy HH:mm:ss"));
	}
	
	private NewsServiceI newsService;
	private UserServiceI userService;
	private ResourceServiceI resourceService;
	private CompanyServiceI companyService;
	
	
	
	
	public CompanyServiceI getCompanyService() {
		return companyService;
	}
	@Autowired
	public void setCompanyService(CompanyServiceI companyService) {
		this.companyService = companyService;
	}

	public ResourceServiceI getResourceService() {
		return resourceService;
	}
	@Autowired
	public void setResourceService(ResourceServiceI resourceService) {
		this.resourceService = resourceService;
	}

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	public NewsServiceI getNewsService() {
		return newsService;
	}
	@Autowired
	public void setNewsService(NewsServiceI newsService) {
		this.newsService = newsService;
	}


	


}
