<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<link  href="css/bs/bootstrap.css" rel="stylesheet" type="text/css" >
<link  href="css/common/footer.css" rel="stylesheet" type="text/css" >
</head>

	   <%@include file="common/header.jsp"%>
	 <div id="box"  v-html="vhtml"
	 style="width: 100px; height: 100px;  border: 4px solid red;text-align: center;margin:auto;margin-top: 80px;">
        {{vhtml}}     
    </div>
	   <%@include file="common/footer.jsp"%>
 
 
<script type="text/javascript"></script>
<script src="js/jquery/jquery-3.2.1.min.js"></script>
<script src="js/bs/bootstrap.js"></script>
<script src="js/vue/vue.js"></script>
<script src="js/vue/vue-resource.js"></script>
<script>

window.onload=function(){
    new Vue({
        el:'#navName',
        data:{
            activeName:'部门事宜',           
            json:{1:'部门事宜',2:'我的任务',3:'我布置的任务',4:'用户'},
            vhtml:{}
        },
        methods:{
        	addActive:function(value){
        		this.activeName=value;
        		this.$http.get('/p-modules-task/i').then(function(res){
  				  // 响应成功回调
  				  alert(res.body);
  				  
  				});
        	}
        	
        }
    });
};
</script>
</html>