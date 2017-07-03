<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link  href="css/bs/bootstrap.css" rel="stylesheet" type="text/css" >
<link  href="css/common/foot.css" rel="stylesheet" type="text/css" charset="utf-8">

</head>
    
	 <%@include file="common/header.jsp"%>
	 
	 
	 <div class="container" style="margin-top:60px;">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 ">
                <div >	    
		        	<div v-for="item in listData">
		                <h2>{{item.title}}</h2>
		                <p>{{item.content}}</p>
		                <h3>创建者:{{item.createBy}}</h3>
		            </div>		        
            </div>
                    <a href="#" class="btn btn-default btn-lg ">Read More <i class="fa fa-angle-right"></i></a>
            </div>

            

                <br>
                <div>
                <nav>
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                </div>
            </div>         
          </div>
        </div>
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
        el:'#alldata',
        data:{
            activeName:'部门事宜',           
            json:{1:'部门事宜',2:'我的任务',3:'我布置的任务',4:'用户'},
            vhtml:{},
            listData:[]
          
        },
        methods:{
        	addActive:function(value){
        		this.activeName=value;       		        		
        		this.$http.get('/p-modules-task/matterList').then(function(response){
      				  // 响应成功回调     			
      			//var arr =response.data.dataList;     				  
      			
      		    /* this.listData = arr;
      			console.log(this.listData);
      			console.log(this.listData[1]);
      			 */
      			
      			var arr =response.body;
      			alert(arr);
      			
      			 for(var i=0;i<arr.length;i++){
      				this.listData.push({
      					content:arr[i].content,
      					createDate:arr[i].createDate,
      					id:arr[i].id,
      					title:arr[i].title,
      					type:arr[i].type,
      					createBy:arr[i].cteateBy
      				});
      				
      			} 
      			 console.log(this.listData[1]); 
      			
      			//alert(arr[1].content);
    			//alert(this.list.content);
        		
  				  
  				});
        	}
        	
        }
    });
};
</script>
</html>