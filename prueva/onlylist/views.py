from django.shortcuts import render, HttpResponse
#from django.http import

# Create your views here.

def home(request):
    return render(request, 'onlylist/home.html')

def contenido(request):
    return render(request, 'onlylist/contenido.html')

def profile(request):
    return render(request, 'onlylist/profile.html')
