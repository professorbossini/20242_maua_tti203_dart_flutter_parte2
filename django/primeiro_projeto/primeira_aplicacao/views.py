from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

#GET
def index(request):
  variaveis = {
    'nome': 'Ana'
  }
  # return HttpResponse('Hello, Django!')
  return render(request, 'primeira_aplicacao/index.html', variaveis)
