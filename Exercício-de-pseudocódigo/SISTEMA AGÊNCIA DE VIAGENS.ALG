Algoritmo "Sistema agencia de viagens"
// Descrição   : Sistema de cadastro, consulta dos clientes e destinos
// Autor       : Danny Berrios Gomes da Silva
// Data atual  : 13/06/2022
Var
// Seção de Declarações das variáveis

 clientes:vetor[1..10, 0..5] de caractere    // MATRIZ DE CLIENTES
 a, b: inteiro                               // VARIAVEIS DA MATRIZ DE CLIENTES
 destinos:vetor[1..10, 0..2] de caractere    // MATRIZ DE DESTINOS
 c, d: inteiro                               // VARIAVEIS  DA MATRIZ DE DESTINOS
 clientex: inteiro                           // NÚMERO DE CLIENTES ADICIONADOS
 destinox: inteiro                           // NÚMERO DE DESTINOS ADICIONADOS
 opcaoEscolhida: inteiro                     // OPÇÃO ESCOLHIDA PELO USUARIO
 numeroc:inteiro                             // GUARDA NRO DO CLIENTE
 msg:vetor[0..5] de caractere                // GUARDA MENSAGENS CLIENTE
 msgDestino:vetor[0..2] de caractere         // GUARDA MENSAGENS DESTINO

Inicio

msg[0] <- "1)Nome: "
msg[1] <- "2)Sobrenome: "
msg[2] <- "3)CPF: "
msg[3] <- "4)Cidade: "
msg[4] <- "5)Estado: "
msg[5] <- "6)País: "

msgDestino[0] <- "1) Cidade:"
msgDestino[1] <- "2) Estado:"
msgDestino[2] <- "3) País:"

enquanto verdadeiro faça
    escreval("=======================================================")
    escreval("===           Seja bem-vindo a Life style           ===")
    escreval("=== uma agência de viagens que se importa com você. ===")
    escreval("=======================================================")
    escreval("===               Menu de navegação                 ===")
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
           escreval("=== uma agência de viagens que se importa com você. ===")
           escreval("=======================================================")
           escreval("===    Aqui registramos a quantidade de pessoas     ===")
           escreval("===            que vão fazer o cadastro.            ===")
           escreval("=======================================================")
           escreval("===       IMPORTANTE! digite a quantidade           ===")
           escreval("===            de pessoas em número.                ===")
           escreval("=======================================================")
           escreva(" Quantas pessoas serão registradas: ")
           leia(clientex)
               limpatela
                   para a de 1 até clientex faça
                   escreval("=======================================================")
                   escreval("===           Seja bem-vindo a Life style           ===")
                   escreval("=== uma agência de viagens que se importa com você. ===")
                   escreval("=======================================================")
                   escreval("===             Cadastro do Cliente                 ===")
                   escreval("=======================================================")
                   escreval(a ,"º)"," Clinte")
                   escreval(" ")
                       para b de 0 até 5 faça
                           escreva(msg[b])
                           leia(clientes[a,b])
                       fimpara
                   limpatela
                   fimpara
       caso 2
           limpatela
           escreval("=======================================================")
           escreval("===           Seja bem-vindo a Life style           ===")
           escreval("=== uma agência de viagens que se importa com você. ===")
           escreval("=======================================================")
           escreval("===    Aqui registramos a quantidade de destinos    ===")
           escreval("===           que será feito no cadastro.           ===")
           escreval("=======================================================")
           escreval("===       IMPORTANTE! digite a quantidade           ===")
           escreval("===            de destinos em número.               ===")
           escreval("=======================================================")
           escreva("Quantos destinos você vai adiciona: ")
           leia(destinox)
               limpatela
               escreval("=======================================================")
               escreval("===           Seja bem-vindo a Life style           ===")
               escreval("=== uma agência de viagens que se importa com você. ===")
               escreval("=======================================================")
               escreval("===   Aqui você nos fala para onde deseja viajar.   ===")
               escreval("=======================================================")
               escreval("Por favor, preencha o formulário abaixo.")
               escreval(" ")
                   para c de 1 até destinox faça
                   escreval(c, "º) ","Cadastre o Destino")
                   escreval("")
                       para d de 0 até 2 faça
                           escreva(msgDestino[d])
                           leia(destinos[c,d])
                       fimpara
                       limpatela
                   fimpara

       caso 3
          limpatela
          escreval("Dados de todos os clientes")
          escreval()
          para a de 1 até clientex faça
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
                      escreva("País: ")
                      escreval(clientes[a,5])
                      escreval()
                      escreval()
          fimpara
          escreval()
       caso 4
          limpatela
          escreval("Todos os destinos")
          escreval()
          para c de 1 até destinox faça
                      escreval("Cadastro de viagem de numero",c)
                      escreva(" Cidade: ")
                      escreval(destinos[c,0])
                      escreva(" Estado: ")
                      escreval(destinos[c,1])
                      escreva(" país: ")
                      escreval(destinos[c,2])
                      escreval()
                      escreval()
          fimpara
          
          caso 5
          limpatela
          escreval("=======================================================")
          escreval("===           Seja bem-vindo a Life style           ===")
          escreval("=== uma agência de viagens que se importa com você. ===")
          escreval("=======================================================")
          escreva("Para consulta o cliente digite o ID: ")
          leia(numeroc)
          limpatela
          escreval("Dados do cliente")
          escreval()
          para b de 0 até 5 faça
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