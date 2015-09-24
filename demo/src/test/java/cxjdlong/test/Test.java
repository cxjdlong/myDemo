package cxjdlong.test;

import com.cxjdlong.basic.util.PubFunction;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String id = "<1>1234<2>1234<3>1234<4>1234<5>1234<6>1234<7>1234<8>1234<9>1234<10>1234<11>1234<12>1234<13>1234<14>1234<15>1234<16>1234<17>1234<18>1234<19>1234<20>1234<21>1234<22>1234<23>1234<24>1234<25>1234<26>1234<27>1234<28>1234<29>1234<30>1234";
		String selectID = PubFunction.getZhengzestr(id);
		selectID = PubFunction.getsubStr(selectID, 0, selectID.length()-1);
		System.out.println("selectID="+selectID);
	}

//	URIEncoding="utf-8"
}
