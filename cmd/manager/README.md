# Manager

Manager is a simple project design to store and retrieve product entries currently stored in the fridge.

The idea behind this part is fairly simple: we buy products to use for consumption and we should not exceed our consumption needs.

The use cases and scenarios that come to my mind are:

- Add a product to the DB;
- Remove a product from the DB;
- Remove expired products from the DB;
- Get a list of products with due date from the DB.

In order to do that, the service has to be able to:

1) An API well suited to perform all of the listed above actions;
2) A server part that will listen for the requests;
3) A client part that will be used by the service admin for maintenance purposes.
