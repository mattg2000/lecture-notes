# 5e7a2fea-8092-45f2-959a-01a6215d700b
# fbb65c9d-8740-4d01-9eb2-6e7d1703bd36
# 768fce74-e999-4879-94ce-5172bf2e7cd6
# 9a8dd837-6f5a-4666-a5d4-b2958797010e
# 413a7a2c-a7da-4ac8-ab93-1178fcbf8b64
# 7b4afa57-c2e8-473d-bdcc-361e469acfe1
# 04a856ee-1e40-44da-9d97-2b63d4d73c9a
# bd588b4e-f147-4f8a-8386-d1c2138f7216
# 2feaeef7-fdb9-4775-8384-6bb31cdd19b8
# 676d2f14-8071-47eb-8d55-66a056cf2403
# b34f26bf-5b04-481f-955f-1006b13e2fc0
# 44fd41f8-6ce0-4bdd-90ae-fafac707af9b
# 2886dafb-7de3-4bc4-8342-38fcab397395
# e163f3c3-24b0-4968-a294-b768068b44a4
# c0c951db-0d3f-416b-8236-eff458c82a2b
# c7b050e0-6515-43e7-a5ad-77462c1404fe
# 25f3e763-1613-49db-8a6a-683455ab2c2e
# 3f53173f-2ed4-4841-bc98-bd4e90ffc568
# c48aa3f3-81e3-45a4-8518-994b503479e9
# 25d4a62c-aa1c-4efe-b10d-4b68387dea50
# 19764558-53cd-45d1-b2fa-08034fc8b298
# 12516cfb-9fdf-40ae-9c72-2c5f09daa6c0
# fe6c3e1d-f9d1-4aa7-a8b9-fe0cc27c0440


INSERT INTO customer(customerId, customerName) VALUES (UNHEX("18968f052cfe446bba89b2af6fdc4a9f"), "Marty");

INSERT INTO customer(customerId, customerName) VALUES (UNHEX("28968f052cfe446bba89b2af6fdc4a9f"), "Brent");

INSERT INTO customer(customerId, customerName) VALUES (UNHEX("38968f052cfe446bba89b2af6fdc4a9f"), "Kathleen");

INSERT INTO customer(customerId, customerName) VALUES (UNHEX("58968f052cfe446bba89b2af6fdc4a9f"), "Natile");

INSERT INTO dish(dishid, dishName, dishPrice) VALUES (UNHEX("12516cfb9fdf40ae9c722c5f09daa6c0"), "Taco", 1);

INSERT INTO dish(dishid, dishName, dishPrice) VALUES (UNHEX("22516cfb9fdf40ae9c722c5f09daa6c0"), "Hot Dog", 2.99);

INSERT INTO dish(dishid, dishName, dishPrice) VALUES (UNHEX("32516cfb9fdf40ae9c722c5f09daa6c0"), "Cheese Burger", 5.99);

INSERT INTO dish(dishid, dishName, dishPrice) VALUES (UNHEX("42516cfb9fdf40ae9c722c5f09daa6c0"), "Burrito", 5.99);

INSERT INTO dish(dishid, dishName, dishPrice) VALUES (UNHEX("52516cfb9fdf40ae9c722c5f09daa6c0"), "Pizza", 3.64);


# bill and bill dishes for marty
INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("b34f26bf5b04481f955f1006b13e2fc0"), UNHEX("18968f052cfe446bba89b2af6fdc4a9f"), "2020-12-29 15:54:34.444");

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("b34f26bf5b04481f955f1006b13e2fc0"), unhex("42516cfb9fdf40ae9c722c5f09daa6c0"), 1);

# Bill and BillDish for Brent
INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("c34f26bf5b04481f955f1006b13e2fc0"), UNHEX("28968f052cfe446bba89b2af6fdc4a9f"), NOW());

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("c34f26bf5b04481f955f1006b13e2fc0"), unhex("32516cfb9fdf40ae9c722c5f09daa6c0"), 1 );

# Bills and BillDishs for Kathleen
INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("d34f26bf5b04481f955f1006b13e2fc0"), UNHEX("38968f052cfe446bba89b2af6fdc4a9f"), NOW());

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("d34f26bf5b04481f955f1006b13e2fc0"), unhex("52516cfb9fdf40ae9c722c5f09daa6c0"), 1);

INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("e34f26bf5b04481f955f1006b13e2fc0"), UNHEX("38968f052cfe446bba89b2af6fdc4a9f"), NOW());

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("e34f26bf5b04481f955f1006b13e2fc0"), unhex("12516cfb9fdf40ae9c722c5f09daa6c0"), 2);

# Bill and Dish for Natalie
INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("f34f26bf5b04481f955f1006b13e2fc0"), UNHEX("58968f052cfe446bba89b2af6fdc4a9f"), NOW());

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("f34f26bf5b04481f955f1006b13e2fc0"), unhex("12516cfb9fdf40ae9c722c5f09daa6c0"),2);

INSERT INTO bill(billId, billCustomerId, billDate) VALUES (UNHEX("a34f26bf5b04481f955f1006b13e2fc0"), UNHEX("58968f052cfe446bba89b2af6fdc4a9f"), NOW());

INSERT INTO billDish(billDishBillId, billDishDishId, billQuantity) VALUES (unhex("a34f26bf5b04481f955f1006b13e2fc0"), unhex("12516cfb9fdf40ae9c722c5f09daa6c0"), 3);



