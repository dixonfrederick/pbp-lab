from django.shortcuts import render
from django.http.response import HttpResponseRedirect
from lab_2.models import Note
from .forms import NoteForm

def index(request):
    response = {'notes': Note.objects.all()}
    return render(request, 'lab4_index.html', response)

def add_note(request):
    context ={}
  
    # create object of form
    form = NoteForm(request.POST or None)
      
    # check if form data is valid
    if form.is_valid() and request.method == 'POST':
        # save the form data to model
        form.save()
        return HttpResponseRedirect('/lab-4')
  
    context['form']= form
    return render(request, "lab4_form.html", context)

def note_list(request):
    response = {'notes': Note.objects.all()}
    return render(request, 'lab4_note_list.html', response)
