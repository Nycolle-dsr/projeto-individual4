Algoritmo "Cadastro de clientes e destinos "

// Descrição   : Cadastro de clientes e destinos com consulta
// Autor(a)    : Nycolle dos Santos Rodrigues
// Data atual  : 04/07/2022
Var
cliente:vetor[1..3, 1..3] de caracter
item: vetor [1..3] de caracter
c, n:inteiro
destino: vetor[1..3] de caracter
p,nome,cpf, consultaDestino: caracter
d,i,m,s:inteiro

procedimento inicializar()
inicio
      enquanto p <> "4" faca
         escreval(" ------------------")
         escreval(" |      Menu      |")
         escreval(" ------------------")
         escreval("[1] Cadastrar Clientes")
         escreval("[2] Cadastrar Destino")
         escreval("[3] Consulta ")
         escreval("[4] Sair")
         escreva("Opção: ")
         leia(p)
         se (p = "1") entao
            limpatela
            cadastraCliente()
         fimse
         se (p = "2") entao
            limpatela
            cadastraDestino()
         fimse
         se (p = "3") entao
            limpatela
            consulta()
         fimse
         se (p = "4") entao
            para c de 1 ate 3 passo 1 faca
                 cliente[c] <- "x"
            fimpara
            limpatela
            escreval("Programa finalizado!")
         fimse
      fimenquanto
fimprocedimento

procedimento cadastraCliente() // Cadastra os clientes.
inicio
      // indexI
      item[1] <- "Primeiro Nome: "
      item[2] <- "Sobrenome: "
      item[3] <- "CPF: "
      escreval("---------Cadastro de Clientes----------")
      para c de 1 ate 3 passo 1 faca
           para n de 1 ate 3 passo 1 faca
                escreva(item[n])
                leia(cliente[c, n])
           fimpara
           escreval("---------------------------------------")
      fimpara
      menuCliente()
fimprocedimento

procedimento cadastraDestino()  //Cadastra os destinos.
inicio

      para i de 1 ate 3 passo 1 faca
              escreval("----Cadastro de Destino----")
              escreva("Destino: ")
              leia(destino[i])
      fimpara
      limpatela
      menuDestino()
fimprocedimento

procedimento menuCliente() // Continua cadastrando cliente ou volta para o menu inicial.
inicio
      escreva("Voltar para o Menu [s/n]? ")
      leia(p)
      se (p = "s") entao
         c <- c + 1
         limpatela
         inicializar()
      senao
           limpatela
           cadastraCliente()
      fimse
fimprocedimento

procedimento menuDestino()  // Continua cadastrando destino ou volta para o menu inicial.
inicio
      escreva("Voltar para o Menu [s/n]? ")
      leia(p)
      se (p = "s") entao
         c <- c + 1
         limpatela
         inicializar()
      senao
           limpatela
           cadastraDestino()
      fimse
fimprocedimento


procedimento consulta()   // Consulta os dados por nome, cpf ou destino.
inicio
      escreval("-------Menu Consulta-------")
      escreval("[1] Cliente por (Nome)")
      escreval("[2] Cliente por (CPF)")
      escreval("[3] Destino")
      escreval("[4] Menu principal")
      escreva("Digite a opção: ")
      leia(d)
      se (d = 1) entao   // Consulta por nome
         m <- 0
         escreva("Digite o nome do cliente: ")
         leia(nome)
         para c de 1 ate 3 passo 1 faca
              se (nome = cliente[c,1]) entao
                 para n de 1 ate 3 passo 1 faca
                      escreval(item[n], cliente[c, n])
                 fimpara
                 m <- m + 1
              fimse
         fimpara
         se (m = 0) entao
            escreval("Cliente inexistente")
         fimse
      fimse

      se (d = 2) entao // Consulta por cpf.
         escreva("Digite o CPF do cliente: ")
         leia(cpf)
         para c de 1 ate 3 passo 1 faca
              se(cpf = cliente[c, 3]) entao
                   para n de 1 ate 3 passo 1 faca
                     escreval(item[n], cliente[c, n])
                   fimpara
              fimse
         fimpara
      fimse

      se (d = 3) entao  // Consulta por destino.
         s <- 0
         escreva("Digite o Destino: ")
         leia(consultaDestino)
         para c de 1 ate 3 passo 1 faca
              se (consultaDestino = destino[c]) entao
                 escreval("Destino: ", destino[c])
                 s <- s + 1
              fimse
         fimpara
      fimse
      voltar_menu_2()
      limpatela
fimprocedimento

procedimento voltar_menu_2() // Recebe a resposta para sair da consulta ou continuar.
inicio
      escreva("Voltar para o Menu [s/n]? ")
      leia(p)
      se (p = "s") entao
         limpatela
         inicializar()
      senao
           limpatela
           consulta()
      fimse
fimprocedimento


Inicio // Programa principal
       inicializar()

Fimalgoritmo