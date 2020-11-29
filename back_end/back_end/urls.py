"""back_end URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from dbms import views

urlpatterns = [
    path('',views.index, name = 'index'),
    path('admin/', admin.site.urls),
    
    path('customers/',views.list_customers, name = 'customers'),
    path('drivers/',views.list_drivers, name = 'drivers'),
    path('grocerystores/',views.list_grocerystore, name = 'grocerystore'),
    path('restaurants/', views.list_restaurants, name = 'restaurants'),
    path('restaurant_branch/', views.list_restaurantbranch, name = 'restaurant_branch'),
    path('store_branch/', views.list_storebranch, name = 'store_branch'),
    path('menu/', views.list_menu, name = 'menu'),
    path('order/', views.list_order, name = 'order'),
    path('product/', views.list_product, name = 'product'),
    path('food/', views.list_food, name = 'food'),
    path('catalog/', views.list_catalog, name = 'catalog'),
    
    path('create_table/',views.create_table, name = 'create_table'),
    path('drop_table/',views.drop_table, name = 'drop_table'),
    path('populate_table/',views.populate_table, name = 'populate_table'),
    path('query/',views.query, name = 'query'),

    path('viewtables/',views.view_tables, name = 'viewtables')
]
