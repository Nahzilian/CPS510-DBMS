from django.http import HttpResponse
from django.shortcuts import render
from django.views import View
from .models import Customer
from django.views.generic.base import TemplateView


def  list_customers (request):
    template = "customer.html"
    return render(request,'customer.html',{'customers' : Customer.objects.all()})