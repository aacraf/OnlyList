from django.urls import path
from django.conf.urls import url
#from django.contrib.auth.views import login
from . import views

urlpatterns = [
    #url(r'^$', views.home),
    path('',views.home, name = 'home'),
    path('contenido/',views.contenido, name = 'contenido'),
    path('profile/',views.profile, name = 'profile'),
 ]
