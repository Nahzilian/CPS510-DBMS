from django.shortcuts import render
from dbms.models import *

def list_customers(request):
    customers = Customer.objects.all()
    return render(request, 'customer.html', {'customers': customers})

def index(request):
    return render(request, 'index.html')

def create_table(request):
    print("Hello world!")
    return render(request, 'create_table.html')

def drop_table(request):
    return render(request, 'drop_table.html')

def populate_table(request):
    return render(request, 'populate_table.html')

def query(request):
    return render(request, 'query.html')