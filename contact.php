 <?php
   include_once('./includes/headerNav.php')
?>
<div id="mainBody">
<div class="container">
	<h1>Visit Us</h1>
	<div class="row">
		<div class="span4">
		<h4>Contact Details</h4>
		<p>	Kurla, Mumbai<br/> Maharashtra, India
			<br/><br/>
			info@electric-shop.com<br/>
            Mobile 9307695937 <br>
			Phone 9307695937<br/>
			web:electricshop.com
		</p>		
		</div>
			
		<div class="span4">
		<h4>Opening Hours</h4>
			<h5> <u>Monday - Friday</u> </h5>
			<p>05:00am - 11:00pm<br/><br/></p>
            <h4>Closing Days</h4>
			<h5> <li>Saturday</li></h5>
			<h5> <li>Sunday</li> </h5>
	
		</div>
		<div class="span4">
		<h4>Email Us</h4>
		<form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF']; ?> " method="post">
        <fieldset>
          <div class="control-group">
           
              <input type="text" placeholder="name" name='name' class="input-xlarge"/>
           
          </div>
		   <div class="control-group">
           
              <input type="text" placeholder="email" name='email' class="input-xlarge"/>
           
          </div>
		   <div class="control-group">
           
              <input type="text" placeholder="subject" name='subject' class="input-xlarge"/>
          
          </div>
          <div class="control-group">
              <textarea rows="3" id="textarea" name='message' class="input-xlarge"></textarea>
           
          </div>

            <button class="btn btn-large" type="submit" value='submit' name='submit'>Send Messages</button>

        </fieldset>
      </form>
		</div>
	</div>
	<?php

if(isset($_POST['submit']))    {
    $sql = $conn->prepare("INSERT INTO email (name,email,subject,message) VALUES (?,?,?,?)");
 
    //sending value in ??? format will prevent injection
    $sql->bind_param('ssss',$_POST['name'],$_POST['email'],$_POST['subject'],$_POST['message']);
    if($sql->execute()){
        echo "<h3 style='text-align:center'>Email Sent Successfully...</h3>";
    };
 
    $conn->close();
    $sql->close(); 
}

?>

	<div class="row">
	<div class="span12">
	<iframe style="width:100%; height:300; border: 0px" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.6014437382332!2d72.8885961!3d19.081253200000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8866a456c9f%3A0x8d1745d15baac575!2sDon%20Bosco%20Institute%20of%20Technology%2C%20Mumbai!5e0!3m2!1sen!2sin!4v1696533377311!5m2!1sen!2sin">View Larger Map</a></small>
	</div>;output=embed"></iframe><br />
	<small><a href="https://www.google.com/maps/place/Don+Bosco+Institute+of+Technology,+Mumbai/@19.0812582,72.8837252,17z/data=!3m1!4b1!4m6!3m5!1s0x3be7c8866a456c9f:0x8d1745d15baac575!8m2!3d19.0812532!4d72.8885961!16zL20vMGJjaDM1?hl=en&entry=ttu" style="color:#0000FF;text-align:left">View Larger Map</a></small>
	</div>
	</div>
</div>
</div>
<!-- MainBody End ============================= -->

<!-- Footer ================================================================== -->
<?php
   include_once('./includes/footer.php')
?>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
<script src="./js/jquery.js" type="text/javascript"></script>
	<script src="./js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>