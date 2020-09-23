<?php
require_once "includes/db.php";

$id = $_POST['id'];

if(empty($id)){

  ?>
  <div class="text-center"> No records found <a href="#" onclick="$('#link_add').hide(); $('#show_add').show(600)"> Hide </a></div>  <?php die();
}

$sql = "SELECT * FROM blossom WHERE id = $id ";

$result = $conn->query($sql);



while($row = $result->fetch_assoc()){

?>

<div class="form-inline" id="edit-data">

  <div class="form-group col-md-3">
    <input type="text" name="name" id="name" value="<?php echo $row['name'];?>" placeholder="name" class="form-control" required>

  </div>

  <div class="form-group col-md-3">
    <input type="text" name="sunneeds" id="sunneeds" value="<?php echo $row['sunneeds'];?>" placeholder="sunneeds" class="form-control" required>

  </div>
  <div class="form-group col-md-3">
    <input type="text" name="soilneeds" id="soilneeds" value="<?php echo $row['soilneeds'];?>" placeholder="soilneeds" class="form-control" required>
  </div>

  </div>
  <div class="form-group col-md-3">
    <input type="text" name="zones" id="zones" value="<?php echo $row['zones'];?>" placeholder="zones" class="form-control" required>
  </div>

  </div>
  <div class="form-group col-md-3">
    <input type="text" name="height" id="height" value="<?php echo $row['height'];?>" placeholder="height" class="form-control" required>
  </div>

  </div>
  <div class="form-group col-md-3">
    <input type="text" name="blooms in" id="blooms in" value="<?php echo $row['blooms in'];?>" placeholder="blooms in" class="form-control" required>
  </div>

  </div>
  <div class="form-group col-md-3">
    <input type="text" name="features" id="features" value="<?php echo $row['features'];?>" placeholder="features" class="form-control" required>
  </div>


  <div class="form-group col-md-3">
<button type="button" name="update" class=" update btn btn-outline-success mx-3" id="<?php echo $row['id'];?>"> Update</button>
 <button type="button" name="add" class="btn btn-outline-danger" href="javascript:void(0);" id="cancel"
 onclick="$('#link_add').slideUp(400); $('#show_add').show(700);"> Cancel</button>
 </div>
</div>

<?php
}
 ?>

 <script type="text/javascript">

 $('.update').click(function (){

   var id = $(this).attr('id');

   var name = $('#name').val();
   var sunneeds = $('#sunneeds').val();
   var soilneeds = $('#soilneeds').val();
   var zones = $('#zones').val();
   var height = $('#height').val();
   var blooms in = $('#blooms in').val();
   var features = $('#features').val();


$.ajax({

  url: "update.php",
  type: "post",
  data: {id: id, name:name , sunneeds:sunneeds, soilneeds:soilneeds, zones:zones , height:height, blooms in:bloomsin,features:features},
  success : function(data, status, xhr){
$('#name').val('');
$('#sunneeds').val('');
$('#soilneeds').val('');
$('#zones').val('');
$('#height').val('');
$('#blooms in').val('');
$('#features').val('');

$('#records_content').fadeOut(1100).html(data);
$.get("view.php", function(html){

  $('#table_content').html(html);
})
$('#records_content').fadeOut(1100).html(data);
},
complete: function(){
  $('#link_add').hide();
  $('#show_add').show(750);
}
})
 })

 </script>