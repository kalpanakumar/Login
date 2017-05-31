<! doctype html>
<html>
<head>
<style>
	ul{ list-style : none ; padding: 0; margin:0;}
	li{ border: 1px solid #ccc; backgorund: #eee; padding:5px 10px; color: #000;}
	li span {padding-left:10px; text-decoration:strikethrough;}
	li button { margin : 10px;}
	#cross { position: fixed; margin-right: 250px; /* Negative half of width. */

}
</style>
</head>
<body>
<h1> TO DO LIST </h1>

<input  id="ITEM" type="input" onblur="add()">
<button onclick="window.location.href='/index.jsp'">Logout</button>
<ul id="todoList">
	
</ul>
<script src= "todoJS.js"></script>
</body>
</html>
