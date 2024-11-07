from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def index(request):
  return HttpResponse('Hello, Django!')

#desafio: escrever um endpoint que recebe dois valores numéricos
# como variáveis de path e faz a sua soma, devolvendo a seguir
#localhost:8000/somar/1/2 
