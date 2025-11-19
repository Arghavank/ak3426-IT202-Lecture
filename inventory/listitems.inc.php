<?php
require_once("item.php");
$items = Item::getItems();
if ($items) {
?>
 <h2>Select Item</h2>
  <form name="items" method="post">
   <select name="itemID" size="20">
       <?php
       foreach ($items as $item) {
           $itemID = $item->itemID;
           $itemName = $item->itemName;
           $itemPrice = $item->listPrice;
           $option = $itemID . " - " . $itemName .  " - " . $itemPrice;
           echo "<option value=\"$itemID\">$option</option>\n";
       }
       ?>
   </select>
 </form>
<?php
} else {
  echo "<h2>No items found.</h2>";
}
?>
<script>
    function selectFirstItem() {
        const select = document.querySelector('select[name="itemID"]');
        if (select && select.options.length > 0) {
            select.selectedIndex = 0;
        }
    }
    selectFirstItem();
</script>