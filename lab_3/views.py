from django.shortcuts import render
from django.http.response import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from lab_1.models import Friend
from .forms import FriendForm

@login_required(login_url='/admin/login/')
def index(request):
    friends = Friend.objects.all()
    response = {'friends': friends}
    return render(request, 'lab3_index.html', response)

@login_required(login_url='/admin/login/')
def add_friend(request):
    context ={}
  
    # create object of form
    form = FriendForm(request.POST or None)
      
    # check if form data is valid
    if form.is_valid() and request.method == 'POST':
        # save the form data to model
        form.save()
        return HttpResponseRedirect('/lab-3')
  
    context['form']= form
    return render(request, "lab3_form.html", context)
    # ref: https://www.geeksforgeeks.org/django-modelform-create-form-from-models/