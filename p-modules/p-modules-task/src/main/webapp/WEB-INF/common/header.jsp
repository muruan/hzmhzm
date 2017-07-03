<%@ page contentType="text/html;charset=UTF-8" %>
<body>
<div id="alldata">
	    <nav class="navbar navbar-inverse navbar-fixed-top">
	     <div class="container" id="navName">
	     	<div class="navbar-header">
	     		<a href="#" class="navbar-brand">欢迎来到本公司</a>	     		
	     	</div>	
	     	<ul class="nav navbar-nav navbar-right">
	            <!-- <li v-on:click=""> -->
	            <li v-for="value in json" v-bind:class="{active:activeName==value}" v-on:click="addActive(value)"><a href="#">{{value}}</a></li>
            </ul>	     	
	     </div>   
	  	</nav>
 
