<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$sql = "SELECT * from recolha";
$faq = $db_handle->runQuery($sql);
?>
<html>
    <head>
      <title>Teste Edit-Delect de uma tabela php</title>
		<style>
			body{width:610px;}
			.current-row{background-color:#B24926;color:#FFF;}
			.current-col{background-color:#1b1b1b;color:#FFF;}
			.tbl-qa{width: 100%;font-size:0.9em;background-color: #f5f5f5;}
			.tbl-qa th.table-header {padding: 5px;text-align: left;padding:10px;}
			.tbl-qa .table-row td {padding:10px;background-color: #FDFDFD;}
		</style>
		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
		function showEdit(editableObj) {
			$(editableObj).css("background","#FFF");
		} 
		
		function saveToDatabase(editableObj,column,id) {
			$(editableObj).css("background","#FFF url(loaderIcon.gif) no-repeat right");
			$.ajax({
				url: "saveedit.php",
				type: "POST",
				data:'column='+column+'&editval='+editableObj.innerHTML+'&id='+id,
				success: function(data){
					$(editableObj).css("background","#FDFDFD");
				}        
		   });
		}
		</script>
    </head>
    <body>		
	   <table class="tbl-qa">
		  <thead>
			  <tr>
				<th class="table-header" width="10%">ID_Reg</th>
				<th class="table-header">Produtor</th>
				<th class="table-header">L_Vaca</th>
				<th class="table-header"></th>
			  </tr>
		  </thead>
		  <tbody>
		  <?php
		  foreach($faq as $k=>$v) {
		  ?>
			  <tr class="table-row">
				<td><?php echo $faq[$k]["id"]; ?></td>
				<td><?php echo $faq[$k]["Nome_Produtor"]; ?></td>
				<td contenteditable="true" onBlur="saveToDatabase(this,'L_Vaca','<?php echo $faq[$k]["id"]; ?>')" onClick="showEdit(this);"><?php echo $faq[$k]["L_Vaca"]; ?></td>
				 <td><a href='apagar.php?id=<?php echo $faq[$k]["id"];?>'> Apagar</a></td>
			  </tr>
		<?php
		}
		?>
		  </tbody>
		</table>
    </body>
</html>
