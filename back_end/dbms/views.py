from django.shortcuts import render
from dbms.models import Customer

def list_customers(request):
    customers = Customer.objects.all()
    return render(request, 'customer.html', {'customers': customers})
