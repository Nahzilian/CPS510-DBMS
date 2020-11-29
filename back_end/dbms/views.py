from django.shortcuts import render
from dbms.models import *
import subprocess
from datetime import datetime
import os
from django.db import connection


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
    

# cwd = os.path.dirname(__file__)
cwd = os.getcwd()
# SQL Query pages
def create_table(request):
    try:
        fn = os.getcwd() + "/dbms/bat_files/create_tables.bat"
        my_env = os.environ.copy()
        subprocess.run([fn],env=my_env)
        return render(request, 'create_table.html',{'success':True})
    except Exception as msg:
        print(msg)
        write_to_log('errors',msg)
        return render(request,'create_table.html', {'success':False})

def drop_table(request):
    try:
        fn = os.getcwd() + "/dbms/bat_files/drop_tables.bat"
        my_env = os.environ.copy()
        subprocess.run([fn],env=my_env)
        return render(request, 'drop_table.html', {'success': True})
    except Exception as msg:
        print(msg)
        write_to_log('errors',msg)
        return render(request,'drop_table.html', {'success':False})

def populate_table(request):
    try:
        fn = os.getcwd() + "/dbms/bat_files/populate_tables.bat"
        my_env = os.environ.copy()
        subprocess.run([fn],env=my_env)
        return render(request, 'populate_table.html', {'success':False})
    except Exception as msg:
        print(msg)
        write_to_log('errors',msg)
        return render(request,'populate_table.html', {'success':False})

def query(request):
    try:
        # 1st query
        with connection.cursor() as cursor:
            cursor.execute("SELECT DISTINCT O_ID,O_TYPE,O_DATE,P_NAME,F_NAME,D_NAME,RATING FROM C_ORDER o, DRIVER d, CUSTOMER c WHERE EXISTS ( SELECT C_ID, O_ID , O_DATE FROM C_ORDER WHERE c.C_ID = o.C_ID AND d.D_ID = o.D_ID) AND o.O_TYPE = 'Delivery' AND O_DATE BETWEEN to_date('2020-8-10','YYYY-MM-DD') AND to_date('2021-8-10','YYYY-MM-DD') ORDER BY o.O_DATE DESC")
            temp_query = [{
                'id' : x[0],
                'type': x[1],
                'date': x[2],
                'p_name': x[3],
                'f_name': x[4],
                'd_name': x[5],
                'rating': x[6],
            } 
            for x in cursor.fetchall()]
        return render(request, 'query.html',{'orders':temp_query})
    except Exception as msg:
        print(msg)
        write_to_log('errors',msg)
        return render(request, 'query.html',{''})
    
    
def view_tables(request):
    print(1)


# Log handler
def write_to_log(filename, context):
    print(os.getcwd())
    path = str(os.getcwd()) + f'/dbms/logs/{filename}.txt'
    open(path,'a').write(f"\nAccessed on: {str(datetime.now())}\n Context:\n{context}")
