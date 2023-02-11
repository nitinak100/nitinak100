<div class="product-row">
  <?php
    // retrieve product information from database or data source
    $product_name = "Example Product";
    $product_image = "example-product.jpg";
    $product_price = "$100.00";
  ?>
  <div class="product-image">
    <img src="<?php echo $product_image; ?>" alt="<?php echo $product_name; ?>">
  </div>
  <div class="product-info">
    <h3><?php echo $product_name; ?></h3>
    <p class="price"><?php echo $product_price; ?></p>
  </div>
</div>


<div class="product-row">
  <?php
    // retrieve product information from database or data source
    $product_id = 1;
    $product_name = "Example Product";
    $product_image = "example-product.jpg";
    $product_price = "$100.00";

    // check if user is logged in
    $user_logged_in = true; // change this value based on your user authentication mechanism
  ?>
  <div class="product-image">
    <img src="<?php echo $product_image; ?>" alt="<?php echo $product_name; ?>">
  </div>
  <div class="product-info">
    <h3><?php echo $product_name; ?></h3>
    <p class="price"><?php echo $product_price; ?></p>
    <?php if ($user_logged_in) { ?>
      <!-- show "Order Now" button for logged in users -->
      <form action="order.php" method="post">
        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
        <input type="submit" value="Order Now">
      </form>
    <?php } else { ?>
      <!-- show "Add to Cart" button for non-logged in users -->
      <form action="cart.php" method="post">
        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
        <input type="submit" value="Add to Cart">
      </form>
    <?php } ?>
  </div>
</div>
