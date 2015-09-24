<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>树形结构</title>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dtree/dtree.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dtree/jquery.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dtree/dtree.css" ></link>
				<script type="text/javascript">
				//  alert(nodeId+"/"+parentId+"/"+nodeName+"/"+hrefAddress);
					tree = new dTree('tree');//创建一个对象.
								$.ajax({ 
										url:'tree.do', 
										type:'post', //数据发送方式 
										dataType:'xml', //接受数据格式 
										error:function(json){
				   							     alert( "not lived!");
											  },
										async: false ,
										success: function(xml){
				 								    $(xml).find("node").each(function(){ 
														  var nodeId=$(this).attr("nodeId");  
					  									  var parentId=$(this).attr("parentId");  
														  var hrefAddress=$(this).attr("hrefAddress");  
														  var nodeName=$(this).text(); 
														  tree.add(nodeId,parentId,nodeName,hrefAddress,"","","","",false);
								                     });
								                }
								  });
				      document.write(tree);
			    </script>
	</head>
	<body>
	</body>
</html>
