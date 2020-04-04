from django.http import HttpResponse

def home():
    return render('index.html')
