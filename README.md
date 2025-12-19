# Online Marketplace
This project is a database created for an online marketplace. The database contains information about
* Products
* Suppliers (marketers)
* Customers
* Purchases

# Database Structure
<img width="669" height="712" alt="er_diagram" src="https://github.com/user-attachments/assets/16e659c8-b569-4e9f-9077-5ae921519846" />

## Tables
* **marketer** - contains information about the sellers on the marketplace
* **customer** - contains information (names, phone numbers) of the customers
* **product** - contains information about the products available for purchase on the marketplace
* **prodct_type** - contains the types of the products (may be used for sorting the products)
* **purchase** - contains information about the purchases made on the marketplace (seller, buyer, product)

# Demonstration of Working with The Database
## Adding a new customer
<img width="1163" height="258" alt="{D3D944DF-EF05-4DAC-95C5-18F5F0A5F040}" src="https://github.com/user-attachments/assets/4f2ebea1-2bfd-4d6c-bb40-9f9c1133bb76" />
The new customer automatically receives an ID (6) and gets added straight to the table.

## Viewing products of a certain type
We might, for example, get a list of the clothing goods
<img width="1160" height="418" alt="{4B954BDF-1930-4ED4-8CBC-0414106CF583}" src="https://github.com/user-attachments/assets/1de5c3b7-11ec-49f2-957e-d26203feeeda" />
After sorting all the products by the constraint `product_type = 2`, we will only get the clothing items in the list.

## Adding a new customer and several purchases by the use of transactions
<img width="1185" height="660" alt="{18E8C5BE-09E0-4685-88A9-61944AFC4675}" src="https://github.com/user-attachments/assets/b595607b-d90c-441b-b26e-6e12d3008d15" />
After a new customer is added, we can simultaneously create several purchases by using a transcation.

# Conclusion
This database contains all the basic tables needed for proper work of an online marketplace. It allows the user to easily view and edit the data related to the marketplace.

# This project was made by Arsen Zhaparov (ID 12170)
