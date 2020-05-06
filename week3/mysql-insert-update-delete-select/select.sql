# SELECT customerId, customerName from customer WHERE customerName = "Marty";
#
# SELECT billId, billCustomerId, billDate from bill where billCustomerId = UNHEX("38968f052cfe446bba89b2af6fdc4a9f");
#
SELECT HEX(billDishBillId) as billDishBillId, billDishDishId, billQuantity from billDish where billDishDishId = UNHEX("12516cfb9fdf40ae9c722c5f09daa6c0");
#
SELECT billId, HEX(billCustomerId), billDate from bill where billId = UNHEX("E34F26BF5B04481F955F1006B13E2FC0");

SELECT HEX(customerId), customerName from customer WHERE customerId = UNHEX("38968F052CFE446BBA89B2AF6FDC4A9F");

SELECT customerId, customerName from customer WHERE customerName LIKE "%t%";

SELECT bill.billId ,bill.billCustomerId, customer.customerName, bill.billDate FROM bill INNER JOIN customer on bill.billCustomerId = customer.customerId WHERE billCustomerId = unhex("58968f052cfe446bba89b2af6fdc4a9f");


