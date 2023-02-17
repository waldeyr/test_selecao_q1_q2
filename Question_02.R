##############################
## Questao 2: Leia com atencao e faca o que foi pedido
##############################

# Faca uma funcao chamada "buscador" que recebe duas variaveis, uma chamada "frases"
#  e a outra chamada de "palavra". A variavel "frases" e uma lista com varias sequencias
# de strings. A Funcao "buscador" deve verificar se a variavel "palavra" esta presente em cada 
# uma das strings da varivel "frases". Ao final, a funcao deve retormar uma lista dentro da variavel 
# "resultado" que contem apenas as strings no qual a variavel "palavra" foi encontrada. Por exemplo:

# Se temos os seguintes conteudos paras as variaveis
# frases = c("O ITV esta realizando um processo seletivo", 
#           "O ITV ? referencia em v?rios estudos",
#            "Processo avaliativo de modelos precisa ser feito com cautela")

# palavra = "processo"


# A variavel "resultado" deve retornar o seguinte: c("O ITV esta realizando um processo seletivo",
# "Processo avaliativo de modelos precisa ser feito com cautela")



# Faca conforme foi pedido:
frases = c("O ITV esta realizando um processo seletivo", 
           "O itv e referencia em varios estudos",
           "R e python sao linguagens poderoras",
           "No ITV existe uma grande variedade de projetos")


palavra = "itv"


buscador <- function(frases, palavra) {
  resultado <- c()
  for(frase in frases){
    if( grepl("itv", frase, ignore.case = FALSE) ){
      resultado <- c(resultado, frase)
    }
  }
  return(resultado)
}

buscador(frases, palavra)
