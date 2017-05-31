//alert("Hi");
function updateItemStatus(){
	var cbId = this.id.replace("cb_", "");
	var itemText = document.getElementById("sp_" + cbId);
	if(this.checked){
     itemText.style.textDecoration="line-through";
	}
	else {
		itemText.style.textDecoration="none";
	}

}
function DeleteItem(){
	this.parentNode.remove();
}
var totalItems =0;
function addNewItem(list, itemText){
	totalItems++;
    
    
	var ListItem =document.createElement("li");
	var checkbox = document.createElement("input");
	 
	 deleteText = document.createElement("span");
	
	

 deleteText.innerHTML = "&nbsp;&#10007;&nbsp;"
	
	
	checkbox.type ="checkbox";
	checkbox.id = "cb_" + totalItems;
	checkbox.onclick = updateItemStatus;
	var ListText = document.createElement("span");
	ListText.id = "sp_" + totalItems;
	ListText.innerText = itemText;
	ListText.setAttribute("contenteditable","true");
    		deleteText.setAttribute("id","cross");



	ListItem.append(checkbox);
	ListItem.append(ListText);
	

   
var ch ;
	if (checkbox.checked){
		ch  ="true";
	}else{
		ch ="fase";
	}
	console.log(ch);
var obj = new List(totalItems,itemText,ch);
	var myJSON = JSON.stringify(obj);


console.log(obj);
console.log(myJSON);
arr.push(myJSON);
console.log(arr);

	
		ListItem.append(deleteText);

	
	
		deleteText.onclick = DeleteItem;

	//ListItem.innerText=itemText;
	//var list = document.getElementById("todoList");
	list.appendChild(ListItem);
}


var Item1 = document.getElementById("ITEM");
	Item1.focus();
	 
    var GetItem ;

Item1.onkeyup = function (event){
	if(event.which == 13){
GetItem = Item1.value
	if (!GetItem )
	{
      
		return false;
	}
	var SetList = document.getElementById("todoList");
	addNewItem(SetList, GetItem);
	    	Item1.value="";

    	Item1.focus();
    }
}; 
function add ()

{GetItem = Item1.value
if (!GetItem )
	{
	
		return false;
	} else {
	var SetList = document.getElementById("todoList");
	addNewItem(SetList, GetItem);
	    	Item1.value="";
}
    	Item1.focus();

}
var arr = [];
function List( id, item, isChecked) {
    this.ID = id;
    this.ITEM = item;
    this.IsCHECKED = isChecked;
    
}






