from django.shortcuts import render
from dbms.models import *
import subprocess

# Global variables
test = "1"

# Index page
def index(request):
    return render(request, 'index.html', {"test":test})

# Listing all tables
def list_customers(request):
    customers = Customer.objects.all()
    return render(request, 'customer.html', {'customers': customers})

def list_drivers(request):
    drivers = Driver.objects.all()
    return render(request, 'driver.html', {'drivers': drivers })

def list_grocerystore(request):
    grocerystores = GroceryStore.objects.all()
    return render(request, 'grocerystore.html', {'groceryStores': grocerystores})

def list_restaurants(request):
    restaurants = Restaurant.objects.all()
    return render(request, 'restaurant.html', {'restaurants': restaurants})

def list_storebranch(request):
    store_branches = StoreBranch.objects.all()
    return render(request, 'storebranch.html', {'storebranches':store_branches})

def list_restaurantbranch(request):
    restaurant_b = RestaurantBranch.objects.all()
    return render(request,'restaurantbranch.html', {'restaurantbranches':restaurant_b})

def list_menu(request):
    menu = Menu.objects.all()
    return render(request, 'menu.html', {'menus':menu})

def list_order(request):
    orders = C_Order.objects.all()
    return render(request, 'order.html', {'orders':orders})

def list_product(request):
    products = Product.objects.all()
    return render(request, 'product.html', {'products': products})

def list_food(request):
    foods = Food.objects.all()
    return render(request, 'food.html', {'foods':foods})

def list_catalog(request):
    catalogs = Catalog.objects.all()
    return render(request, 'catalog.html', {'catalogs': catalogs})
    
# SQL Query pages
def create_table(request):
    subprocess.call([r'./bat_files/create_tables.bat'])
    return render(request, 'create_table.html')

def drop_table(request):
    subprocess.call([r'./bat_files/drop_tables.bat'])
    return render(request, 'drop_table.html')

def populate_table(request):
    subprocess.call([r'./bat_files/populate_tables.bat'])
    return render(request, 'populate_table.html')

def query(request):
    return render(request, 'query.html')

