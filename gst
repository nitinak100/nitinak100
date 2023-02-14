<?php

$billAmount = isset($_POST['billAmount']) ? $_POST['billAmount'] : '';
$state = isset($_POST['state']) ? $_POST['state'] : '';

if ($billAmount && $state) {
  if ($state === 'Rajasthan') {
    $cgstRate = 9;
    $sgstRate = 9;
    $igstRate = 0;
  } else {
    $cgstRate = 0;
    $sgstRate = 0;
    $igstRate = 18;
  }

  $cgstAmount = ($billAmount * $cgstRate) / 100;
  $sgstAmount = ($billAmount * $sgstRate) / 100;
  $igstAmount = ($billAmount * $igstRate) / 100;
  $totalAmount = $billAmount + $cgstAmount + $sgstAmount + $igstAmount;

  echo "Bill Amount: " . $billAmount . "<br>";
  echo "CGST Rate: " . $cgstRate . "%<br>";
  echo "CGST Amount: " . $cgstAmount . "<br>";
  echo "SGST Rate: " . $sgstRate . "%<br>";
  echo "SGST Amount: " . $sgstAmount . "<br>";
  echo "IGST Rate: " . $igstRate . "%<br>";
  echo "IGST Amount: " . $igstAmount . "<br>";
  echo "Total Amount: " . $totalAmount . "<br>";
} else {
  echo "Please enter bill amount and state to calculate GST.";
}

?>

<!-- Example form for the web page -->
<form action="gst.php" method="post">
  <label for="billAmount">Bill Amount:</label>
  <input type="number" id="billAmount" name="billAmount" required>
  <br>
  <label for="state">State:</label>
  <select id="state" name="state" required>
    <option value="">--Select State--</option>
    <option value="Rajasthan">Rajasthan</option>
    <option value="Other">Other</option>
  </select>
  <br>
  <input type="submit" value="Calculate GST">
</form>
