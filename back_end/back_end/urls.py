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
    path('admin/', admin.site.urls),
    path('customer/',views.list_customers, name = 'customers'),
    path('',views.index, name = 'index'),
    path('create_table/',views.create_table, name = 'create_table'),
    path('drop_table/',views.drop_table, name = 'drop_table'),
    path('populate_table/',views.populate_table, name = 'populate_table'),
    path('query/',views.query, name = 'query')
]
