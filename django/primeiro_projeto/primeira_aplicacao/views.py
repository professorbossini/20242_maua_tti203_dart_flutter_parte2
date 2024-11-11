from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
#HttpRequest -> processamento -> HttpResponse
def index(request):
  #poderiamos acessar o modelo aqui, para acionar regras de negócio
  variaveis = {
    'minha_primeira_variavel': "Hello, variáveis depois de alterar o diretório!!!"
  }
  return render(request, 'primeira_aplicacao/index.html', context=variaveis)
  # return HttpResponse('Hello, Django!')