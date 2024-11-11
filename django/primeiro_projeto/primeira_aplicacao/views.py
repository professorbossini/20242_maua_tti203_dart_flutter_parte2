from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def index(request):
  variaveis = {
    'minha_primeira_variavel': 'hello, variáveis!'
  }
  return render(request, 'primeira_aplicacao/index.html', variaveis)