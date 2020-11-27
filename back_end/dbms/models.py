from django.db import models

class Customer(models.Model):
    c_id = models.BigIntegerField(primary_key=True)
    c_name = models.CharField(max_length=20,null=False)
    address = models.CharField(max_length=30,null=False)
    contact_info = models.CharField(max_length=30,null=False,unique=True)

class Driver(models.Model):
    d_id = models.BigIntegerField(primary_key=True)
    d_name = models.CharField(max_length=20,null=False)
    rating = models.DecimalField(max_digits=2, decimal_places=1, blank=True, null=True)
    vehicle_info = models.CharField(max_length=25,null=False,unique=True)

class Restaurant(models.Model):
    v_id = models.BigIntegerField(primary_key=True)
    v_name = models.CharField(max_length=40,null=False)
    cuisine = models.CharField(max_length=20, blank=True, null=True)


class GroceryStore(models.Model):
    v_id = models.BigIntegerField(primary_key=True)
    v_name = models.CharField(max_length=40,null=False)
    product_type = models.CharField(max_length=20, blank=True, null=True)


class RestaurantBranch(models.Model):
    r_id = models.BigIntegerField(primary_key=True)
    r_location = models.CharField(max_length=100,null=False,unique=True)
    r_phone = models.CharField(unique=True, max_length=20, blank=True, null=True)
    v = models.ForeignKey(Restaurant, models.DO_NOTHING, blank=True, null=True)


class StoreBranch(models.Model):
    g_id = models.BigIntegerField(primary_key=True)
    g_location = models.CharField(max_length=100,null=False,unique=True)
    g_phone = models.CharField(unique=True, max_length=20, blank=True, null=True)
    v = models.ForeignKey(GroceryStore, models.DO_NOTHING, blank=True, null=True)



class Menu(models.Model):
    m_id = models.BigIntegerField(primary_key=True)
    cat = models.CharField(max_length=10)
    r = models.ForeignKey('RestaurantBranch', models.DO_NOTHING, blank=True, null=True)


class Catalog(models.Model):
    cat_id = models.BigIntegerField(primary_key=True)
    cat = models.CharField(max_length=15)
    g = models.ForeignKey('StoreBranch', models.DO_NOTHING, blank=True, null=True)



class Food(models.Model):
    f_name = models.CharField(primary_key=True, max_length=15)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.BigIntegerField()
    description = models.CharField(max_length=150, blank=True, null=True)
    m = models.ForeignKey('Menu', models.DO_NOTHING, blank=True, null=True)



class Product(models.Model):
    p_name = models.CharField(primary_key=True, max_length=15)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    quantity = models.BigIntegerField()
    description = models.CharField(max_length=150, blank=True, null=True)
    cat = models.ForeignKey(Catalog, models.DO_NOTHING, blank=True, null=True)



class C_Order(models.Model):
    o_id = models.BigIntegerField(primary_key=True)
    o_type = models.CharField(max_length=8, blank=True, null=True,default="DELIVERY")
    o_date = models.DateField(blank=True, null=True)
    p_name = models.ForeignKey('Product', models.DO_NOTHING, db_column='p_name', blank=True, null=True)
    f_name = models.ForeignKey('Food', models.DO_NOTHING, db_column='f_name', blank=True, null=True)
    c = models.ForeignKey('Customer', models.DO_NOTHING, blank=True, null=True)
    d = models.ForeignKey('Driver', models.DO_NOTHING, blank=True, null=True)
