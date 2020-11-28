from django.db import models

class Customer(models.Model):
    c_id = models.BigIntegerField(primary_key=True)
    c_name = models.CharField(max_length=20)
    address = models.CharField(max_length=30)
    contact_info = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'customer'


class Driver(models.Model):
    d_id = models.BigIntegerField(primary_key=True)
    d_name = models.CharField(max_length=20)
    rating = models.DecimalField(
        max_digits=2, decimal_places=1, blank=True, null=True)
    vehicle_info = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'driver'


class Restaurant(models.Model):
    v_id = models.BigIntegerField(primary_key=True)
    v_name = models.CharField(max_length=40)
    cuisine = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'restaurant'

class GroceryStore(models.Model):
    v_id = models.BigIntegerField(primary_key=True)
    v_name = models.CharField(max_length=40)
    product_type = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'grocery_store'

class RestaurantBranch(models.Model):
    r_id = models.BigIntegerField(primary_key=True)
    r_location = models.CharField(max_length=100)
    r_phone = models.CharField(
        unique=True, max_length=20, blank=True, null=True)
    v = models.ForeignKey(Restaurant, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'restaurant_branch'


class StoreBranch(models.Model):
    g_id = models.BigIntegerField(primary_key=True)
    g_location = models.CharField(max_length=100)
    g_phone = models.CharField(
        unique=True, max_length=20, blank=True, null=True)
    v = models.ForeignKey(GroceryStore, models.DO_NOTHING,
                          blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'store_branch'


class Catalog(models.Model):
    cat_id = models.BigIntegerField(primary_key=True)
    cat = models.CharField(max_length=15)
    g = models.ForeignKey(
        'StoreBranch', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'catalog'



class Menu(models.Model):
    m_id = models.BigIntegerField(primary_key=True)
    cat = models.CharField(max_length=10)
    r = models.ForeignKey('RestaurantBranch',
                          models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'menu'

class Food(models.Model):
    f_name = models.CharField(primary_key=True, max_length=15)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.BigIntegerField()
    description = models.CharField(max_length=150, blank=True, null=True)
    m = models.ForeignKey('Menu', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'food'


class Product(models.Model):
    p_name = models.CharField(primary_key=True, max_length=15)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.BigIntegerField()
    description = models.CharField(max_length=150, blank=True, null=True)
    cat = models.ForeignKey(Catalog, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'product'



class C_Order(models.Model):
    o_id = models.BigIntegerField(primary_key=True)
    o_type = models.CharField(max_length=8, blank=True, null=True)
    o_date = models.DateField(blank=True, null=True)
    p_name = models.ForeignKey(
        'Product', models.DO_NOTHING, db_column='p_name', blank=True, null=True)
    f_name = models.ForeignKey(
        'Food', models.DO_NOTHING, db_column='f_name', blank=True, null=True)
    c = models.ForeignKey('Customer', models.DO_NOTHING, blank=True, null=True)
    d = models.ForeignKey('Driver', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'c_order'
