Algoritmo "Sistema agencia de viagens"
// Descri��o   : Sistema de cadastro, consulta dos clientes e destinos
// Autor       : Danny Berrios Gomes da Silva
// Data atual  : 13/06/2022
Var
// Se��o de Declara��es das vari�veis

 clientes:vetor[1..10, 0..5] de caractere    // MATRIZ DE CLIENTES
 a, b: inteiro                               // VARIAVEIS DA MATRIZ DE CLIENTES
 destinos:vetor[1..10, 0..2] de caractere    // MATRIZ DE DESTINOS
 c, d: inteiro                               // VARIAVEIS  DA MATRIZ DE DESTINOS
 clientex: inteiro                           // N�MERO DE CLIENTES ADICIONADOS
 destinox: inteiro                           // N�MERO DE DESTINOS ADICIONADOS
 opcaoEscolhida: inteiro                     // OP��O ESCOLHIDA PELO USUARIO
 numeroc:inteiro                             // GUARDA NRO DO CLIENTE
 msg:vetor[0..5] de caractere                // GUARDA MENSAGENS CLIENTE
 msgDestino:vetor[0..2] de caractere         // GUARDA MENSAGENS DESTINO

Inicio

msg[0] <- "1)Nome: "
msg[1] <- "2)Sobrenome: "
msg[2] <- "3)CPF: "
msg[3] <- "4)Cidade: "
msg[4] <- "5)Estado: "
msg[5] <- "6)Pa�s: "

msgDestino[0] <- "1) Cidade:"
msgDestino[1] <- "2) Estado:"
msgDestino[2] <- "3) Pa�s:"

enquanto verdadeiro fa�a
    escreval("=======================================================")
    escreval("===           Seja bem-vindo a Life style           ===")
    escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
    escreval("=======================================================")
    escreval("===               Menu de navega��o                 ===")
    escreval("=======================================================")
    escreval("1) Cadastrar clientes")
    escreval("2) Cadastrar destinos")
    escreval("3) Consultar todos os clientes")
    escreval("4) Consultar todos os destinos")
    escreval("5) Consultar cliente especifico")
    escreval("ESC- Sair")
    leia(opcaoEscolhida)

    escolha opcaoEscolhida
       caso 1
          limpatela
           escreval("=======================================================")
           escreval("===           Seja bem-vindo a Life style           ===")
           escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
           escreval("=======================================================")
           escreval("===    Aqui registramos a quantidade de pessoas     ===")
           escreval("===            que v�o fazer o cadastro.            ===")
           escreval("=======================================================")
           escreval("===       IMPORTANTE! digite a quantidade           ===")
           escreval("===            de pessoas em n�mero.                ===")
           escreval("=======================================================")
           escreva(" Quantas pessoas ser�o registradas: ")
           leia(clientex)
               limpatela
                   para a de 1 at� clientex fa�a
                   escreval("=======================================================")
                   escreval("===           Seja bem-vindo a Life style           ===")
                   escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
                   escreval("=======================================================")
                   escreval("===             Cadastro do Cliente                 ===")
                   escreval("=======================================================")
                   escreval(a ,"�)"," Clinte")
                   escreval(" ")
                       para b de 0 at� 5 fa�a
                           escreva(msg[b])
                           leia(clientes[a,b])
                       fimpara
                   limpatela
                   fimpara
       caso 2
           limpatela
           escreval("=======================================================")
           escreval("===           Seja bem-vindo a Life style           ===")
           escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
           escreval("=======================================================")
           escreval("===    Aqui registramos a quantidade de destinos    ===")
           escreval("===           que ser� feito no cadastro.           ===")
           escreval("=======================================================")
           escreval("===       IMPORTANTE! digite a quantidade           ===")
           escreval("===            de destinos em n�mero.               ===")
           escreval("=======================================================")
           escreva("Quantos destinos voc� vai adiciona: ")
           leia(destinox)
               limpatela
               escreval("=======================================================")
               escreval("===           Seja bem-vindo a Life style           ===")
               escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
               escreval("=======================================================")
               escreval("===   Aqui voc� nos fala para onde deseja viajar.   ===")
               escreval("=======================================================")
               escreval("Por favor, preencha o formul�rio abaixo.")
               escreval(" ")
                   para c de 1 at� destinox fa�a
                   escreval(c, "�) ","Cadastre o Destino")
                   escreval("")
                       para d de 0 at� 2 fa�a
                           escreva(msgDestino[d])
                           leia(destinos[c,d])
                       fimpara
                       limpatela
                   fimpara

       caso 3
          limpatela
          escreval("Dados de todos os clientes")
          escreval()
          para a de 1 at� clientex fa�a
                      escreval("ID =", a)
                      escreva("Nome: ")
                      escreval(clientes[a,0])
                      escreva("Sobrenome: ")
                      escreval(clientes[a,1])
                      escreva("CPF: ")
                      escreval(clientes[a,2])
                      escreva("Cidade: ")
                      escreval(clientes[a,3])
                      escreva("Estado: ")
                      escreval(clientes[a,4])
                      escreva("Pa�s: ")
                      escreval(clientes[a,5])
                      escreval()
                      escreval()
          fimpara
          escreval()
       caso 4
          limpatela
          escreval("Todos os destinos")
          escreval()
          para c de 1 at� destinox fa�a
                      escreval("Cadastro de viagem de numero",c)
                      escreva(" Cidade: ")
                      escreval(destinos[c,0])
                      escreva(" Estado: ")
                      escreval(destinos[c,1])
                      escreva(" pa�s: ")
                      escreval(destinos[c,2])
                      escreval()
                      escreval()
          fimpara
          
          caso 5
          limpatela
          escreval("=======================================================")
          escreval("===           Seja bem-vindo a Life style           ===")
          escreval("=== uma ag�ncia de viagens que se importa com voc�. ===")
          escreval("=======================================================")
          escreva("Para consulta o cliente digite o ID: ")
          leia(numeroc)
          limpatela
          escreval("Dados do cliente")
          escreval()
          para b de 0 at� 5 fa�a
               escreva(msg[b])
               escreva("  ")
               escreval(clientes[numeroc, b])
          fimpara
          escreval(" ")
       fimescolha
fimenquanto

limpatela
escreval("finalizado")

Fimalgoritmo