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
