<header class="msger-header">
    <div class="msger-header-title">
      <i class="fas fa-comment-alt"></i><?php $id = $_SESSION['id'];?>
      <?php if($value['sender_id'] = $id){ ?>
     <?php echo $_SESSION['name']; ?> 
   <?php } ?>
    </div>
    <div class="msger-header-options">
    <a class="btn btn-primary" style="padding:10px"  href="http://localhost/app_groupchat/user/server/logout.php">Logout</a>
      <span><i class="fas fa-cog"></i></span>
    </div>
  </header>