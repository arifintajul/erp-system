@echo off

rem Create the root directory
cd \
c:
mkdir C:\xampp81\htdocs\erp

rem Create subdirectories
mkdir C:\xampp81\htdocs\erp\controllers
mkdir C:\xampp81\htdocs\erp\models
mkdir C:\xampp81\htdocs\erp\views
mkdir C:\xampp81\htdocs\erp\tests

rem Create files within subdirectories
echo > C:\xampp81\htdocs\erp\controllers\LoginController.php
echo > C:\xampp81\htdocs\erp\controllers\SalesController.php
echo > C:\xampp81\htdocs\erp\controllers\PurchasesController.php
echo > C:\xampp81\htdocs\erp\controllers\CustomerController.php
echo > C:\xampp81\htdocs\erp\controllers\SupplierController.php

echo > C:\xampp81\htdocs\erp\models\User.php
echo > C:\xampp81\htdocs\erp\models\Sale.php
echo > C:\xampp81\htdocs\erp\models\Purchase.php
echo > C:\xampp81\htdocs\erp\models\Customer.php
echo > C:\xampp81\htdocs\erp\models\Supplier.php

echo > C:\xampp81\htdocs\erp\views\login.php
echo > C:\xampp81\htdocs\erp\views\sales.php
echo > C:\xampp81\htdocs\erp\views\purchases.php
echo > C:\xampp81\htdocs\erp\views\customer.php
echo > C:\xampp81\htdocs\erp\views\supplier.php

echo > C:\xampp81\htdocs\erp\tests\LoginTest.php
echo > C:\xampp81\htdocs\erp\tests\SalesTest.php
echo > C:\xampp81\htdocs\erp\tests\PurchasesTest.php
echo > C:\xampp81\htdocs\erp\tests\CustomerTest.php
echo > C:\xampp81\htdocs\erp\tests\SupplierTest.php

echo > C:\xampp81\htdocs\erp\index.php

echo Folder structure created successfully.