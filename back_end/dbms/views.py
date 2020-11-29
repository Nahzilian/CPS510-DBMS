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
    return render(request, 'index.html', {"test": test})

# Listing all tables


def list_customers(request):
    customers_1 = Customer1.objects.all()
    customers_2 = Customer2.objects.all()
    return render(request, 'customer.html', {'customers_1': customers_1, 'customers_2': customers_2})


def list_drivers(request):
    drivers = Driver.objects.all()
    return render(request, 'driver.html', {'drivers': drivers})


def list_grocerystore(request):
    grocerystores_1 = GroceryStore1.objects.all()
    grocerystores_2 = GroceryStore2.objects.all()
    return render(request, 'grocerystore.html', {'grocerystores_1': grocerystores_1, 'grocerystores_2': grocerystores_2})


def list_restaurants(request):
    restaurants_1 = Restaurant1.objects.all()
    restaurants_2 = Restaurant2.objects.all()
    return render(request, 'restaurant.html', {'restaurants_1': restaurants_1, 'restaurants_2': restaurants_2})


def list_storebranch(request):
    store_branches = StoreBranch.objects.all()
    return render(request, 'storebranch.html', {'storebranches': store_branches})


def list_restaurantbranch(request):
    restaurant_b = RestaurantBranch.objects.all()
    return render(request, 'restaurantbranch.html', {'restaurantbranches': restaurant_b})


def list_menu(request):
    menu = Menu.objects.all()
    return render(request, 'menu.html', {'menus': menu})


def list_order(request):
    orders = C_Order.objects.all()
    return render(request, 'order.html', {'orders': orders})


def list_product(request):
    products = Product.objects.all()
    return render(request, 'product.html', {'products': products})


def list_food(request):
    foods = Food.objects.all()
    return render(request, 'food.html', {'foods': foods})


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
        subprocess.run([fn], env=my_env)
        return render(request, 'create_table.html', {'success': True})
    except Exception as msg:
        print(msg)
        write_to_log('errors', msg)
        return render(request, 'create_table.html', {'success': False})


def drop_table(request):
    try:
        fn = os.getcwd() + "/dbms/bat_files/drop_tables.bat"
        my_env = os.environ.copy()
        subprocess.run([fn], env=my_env)
        return render(request, 'drop_table.html', {'success': True})
    except Exception as msg:
        print(msg)
        write_to_log('errors', msg)
        return render(request, 'drop_table.html', {'success': False})


def populate_table(request):
    try:
        fn = os.getcwd() + "/dbms/bat_files/populate_tables.bat"
        my_env = os.environ.copy()
        subprocess.run([fn], env=my_env)
        return render(request, 'populate_table.html', {'success': False})
    except Exception as msg:
        print(msg)
        write_to_log('errors', msg)
        return render(request, 'populate_table.html', {'success': False})


def execute_sql_query(command):
    try:
        with connection.cursor() as cursor:
            cursor.execute(command)
            result = [x for x in cursor.fetchall()]
            return result
    except Exception as msg:
        print(msg)
        write_to_log('errors', msg)
        return []


def query(request):
    try:
        order_1 = execute_sql_query("SELECT DISTINCT O_ID,O_TYPE,O_DATE,P_NAME,F_NAME,D_NAME,RATING FROM C_ORDER o, DRIVER d, CUSTOMER_1 c WHERE EXISTS ( SELECT C_ID, O_ID , O_DATE FROM C_ORDER WHERE c.C_ID = o.C_ID AND d.D_ID = o.D_ID) AND o.O_TYPE = 'Delivery' AND O_DATE BETWEEN to_date('2020-8-10','YYYY-MM-DD') AND to_date('2021-8-10','YYYY-MM-DD') ORDER BY o.O_DATE DESC")
        order_1_final = [{
            "id":x[0],
            "type":x[1],
            "date":x[2],
            "p_name":x[3],
            "f_name":x[4],
            "d_name":x[5],
            "rating":x[6]} for x in order_1]
        food = execute_sql_query(
            "select * from FOOD where quantity = (SELECT MAX(quantity) from FOOD)")
        food_final = [{
            "f_name":x[0],
            "price":x[1],
            "quantity":x[2],
            "desc":x[3],
            "m_id":x[4]} for x in food]
        order_2 = execute_sql_query(
            "select c_2.C_NAME, o.*, p.Price from C_ORDER o, Product p, Customer_1 c_1, Customer_2 c_2 where c_1.C_ID = o.C_ID and o.P_name = p.P_name and p.Price=(select MAX(price) from Product)")
        order_2_final = [{
            "name":x[0],
            "o_id":x[1],
            "o_type":x[2],
            "o_date":x[3],
            "p_name":x[4],
            "f_name":x[5],
            "c_id":x[6],
            "d_id":x[7],
            "price":x[8]} for x in order_2]
        menu = execute_sql_query(
            "SELECT ROUND(AVG(PRICE),2) as Average, V_NAME as Vendor FROM MENU m, FOOD f , RESTAURANT_BRANCH r, RESTAURANT_1 v WHERE EXISTS (SELECT M_ID, R_ID FROM MENU WHERE v.V_ID = r.V_ID AND r.R_ID = m.R_ID AND f.M_ID = m.M_ID) GROUP BY v.V_NAME")
        menu_final = [{
            "avg":x[0],
            "vendor":x[1]} for x in menu]
        trip_num = execute_sql_query(
            "select count(*) AS number_of_trips  from (select * from C_ORDER where D_ID=5 and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 7),'YYYY-MM') = to_date('2021-01', 'YYYY-MM'))")
        trip_num_final = [{
            "d_id":5,
            "trip_num":x[0]} for x in trip_num]
        order_num = execute_sql_query(
            "select count(*) AS number_of_orders from c_order where c_id=9 and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 4),'YYYY') = to_date('2021', 'YYYY')")
        order_num_final = [{
            "c_id":9,
            "num_order":x[0]} for x in order_num]
        order_type = execute_sql_query(
            "select O_type as Type, count(*) as Total from (SELECT * FROM C_ORDER WHERE to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 7),'YYYY-MM') = to_date('2021-01', 'YYYY-MM')) group by O_Type")
        order_type_final = [{
            "type":x[0],
            "total":x[1]} for x in order_type]
        customer = execute_sql_query(
            "SELECT c_2.C_NAME as NAME, COUNT(*) as ORDERS from C_ORDER o, Customer_1 c_1, Customer_2 c_2  where c_1.C_ID=o.C_ID and c_1.Contact_info = c_2.Contact_info group by c_2.C_NAME order by COUNT(*) DESC")
        customer_final = [{
            "name":x[0],
            "orders":x[1]} for x in customer]
        d_order = execute_sql_query(
            "select D_ID, count(*) AS Trips from C_ORDER where O_Type='Delivery' and to_date(substr(to_char(O_DATE,'YYYY-MM-DD'), 1, 4),'YYYY') = to_date('2021', 'YYYY') group by D_ID order by count(*) DESC")
        d_order_final = [{
            "d_id":x[0],
            "trips":x[1]} for x in d_order]
        order_f = execute_sql_query("SELECT O_ID,O_TYPE,O_DATE,o.F_NAME,P_NAME,PRICE FROM C_ORDER o,FOOD f1 WHERE o.P_NAME is NULL AND f1.F_NAME=o.F_NAME AND EXISTS (SELECT F_NAME FROM FOOD f WHERE f.PRICE>90 AND f.F_NAME=o.F_NAME) UNION SELECT O_ID,O_TYPE,O_DATE,F_NAME,o.P_NAME,PRICE FROM C_ORDER o,PRODUCT p1 WHERE o.F_NAME is NULL AND p1.P_NAME=o.P_NAME AND EXISTS (SELECT P_NAME FROM PRODUCT p WHERE p.PRICE>90 AND p.P_NAME=o.P_NAME)")
        order_f_final = [{
            "o_id":x[0],
            "o_type":x[1],
            "o_date":x[2],
            "f_name":x[3],
            "p_name":x[4],
            "price":x[5]} for x in order_f]
        obj = {
            "order_1": order_1_final,
            "food": food_final,
            "order_2": order_2_final,
            "menu": menu_final,
            "trip_num": trip_num_final,
            "order_num": order_num_final,
            "order_type": order_type_final,
            "customer": customer_final,
            "d_order": d_order_final,
            "order_f": order_f_final,
        }
        return render(request, 'query.html', obj)
    except Exception as msg:
        print(msg)
        write_to_log('errors', msg)
        return render(request, 'query.html')


def view_tables(request):
    obj = {
        "customers_1": Customer1.objects.all(),
        "customers_2": Customer2.objects.all(),
        "drivers": Driver.objects.all(),
        "grocerystores_1": GroceryStore1.objects.all(),
        "grocerystores_2": GroceryStore1.objects.all(),
        "restaurants_1": Restaurant1.objects.all(),
        "restaurants_2": Restaurant1.objects.all(),
        "storebranches": StoreBranch.objects.all(),
        "restaurantbranches": RestaurantBranch.objects.all(),
        "menus": Menu.objects.all(),
        "orders": C_Order.objects.all(),
        "products": Product.objects.all(),
        "foods": Food.objects.all(),
        "catalogs": Catalog.objects.all()
    }
    return render(request, 'viewtables.html', obj)


# Log handler
def write_to_log(filename, context):
    print(os.getcwd())
    path = str(os.getcwd()) + f'/dbms/logs/{filename}.txt'
    open(path, 'a').write(
        f"\nAccessed on: {str(datetime.now())}\n Context:\n{context}")
