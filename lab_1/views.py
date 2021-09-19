from django.shortcuts import render
from datetime import datetime, date
from .models import Friend

mhs_name = 'Dixon Frederick'
curr_year = int(datetime.now().strftime("%Y"))
birth_date = date(2002, 9, 10)
npm = '2006597840'


def index(request):
    response = {'name': mhs_name,
                'age': calculate_age(birth_date.year),
                'npm': npm}
    return render(request, 'index_lab1.html', response)


def calculate_age(birth_year):
    return curr_year - birth_year if birth_year <= curr_year else 0


def friend_list(request):
    friends = Friend.objects.all()
    response = {'friends': friends}
    return render(request, 'friend_list_lab1.html', response)
