/*
 * DESENVOLVA UM ALGORITMO QUE UTILIZE SOMENTE FUNﾃ�ﾃ髭S PARA ATENDER O QUE SE PEDE A SEGUIR:
 * Dﾃｪ mensagem de boas-vindas
 * Efetue cﾃ｡lculo MANUAL do QUADRADO com base em 02 nﾃｺmeros informados pelo usuﾃ｡rio
 * Efetue cﾃ｡lculo AUTOMﾃゝICO do QUADRADO com base em 02 nﾃｺmeros previamente determinados pelo programador
 * Entre o cﾃ｡lculo MANUAL e AUTOMﾃゝICO o sistema deverﾃ｡ exibir uma mmensagem de transiﾃｧﾃ｣o
 * Apﾃｳs o cﾃ｡lculo AUTOMﾃゝICO deverﾃ｡ ser exibida mensagem de agradecimento
 * A mensagem de agradecimento deverﾃ｡ ser CHAMADA NA FUNﾃ�ﾃグ que realizarﾃ｡ o Cﾃ´CULO AUTOMﾃゝICO
 */



programa
{
	inteiro QuantidadeDeProduto
	
	funcao inicio()
	{
		
		
		
		mensagemInicial("SEJA BEM-VINDO A LISTA DE COMPRA INTELIGENTE !!!") //Chama FUNÇÃO e passa o parﾃ｢metro esperado que ﾃｩ CADEIA
		escreva("\nAqui você cadastra seus itens e nós te falamos se deve ou não comprar naquele momento. \n\n")

		escreva("\nInforme a QUANTIDADE de produtos que deseja cadastrar nesse momento: \n")
		
		//escreva("O resultado do CáCULO MANUAL: ", calculaQuadradoManual(num01, num02))
		
	     //escreva("\nO resultado do primeiro cálculo : ", calculaQuadradoAutomatico (5.0, 6.0))		
	     //escreva("\nO resultado do segundo cálculo : ", calculaQuadradoAutomatico (2.0, 4.0), "\n")

	     mensagemFinal("")
	}





	funcao mensagemInicial (cadeia texto) //Função para EXIBIR mensagem inicial
	{
		inteiro contador //Contador do PARA
				
		para(contador = 0; contador < 50; contador++) //Inserir linha ANTES do texto
		{
		  escreva ("-")
		}
		
		escreva ("\n", texto, "\n") //TEXTO refere-se ao nome da VAR cadeia que esta esperada
		
		para(contador = 0; contador < 50; contador++) //Inserir linha Para  o texto
		{
		  escreva ("-")
		}

		escreva("\n")
	}





	funcao real calculaQuadradoAutomatico (real num01, real num02) //Função para CÁLCULO AUTOMÁTICO (usuﾃ｡rio Nﾃグ informa nﾃｺmero)
	{
		real resultadoQuadroAutomatico
		
		resultadoQuadroAutomatico = (num01 * num01) + (num02 * num02)
		
		retorne resultadoQuadroAutomatico //RETORNE ﾃｩ usado quando esperamos recuperar apenas o RESULTADO da execuﾃｧﾃ｣o da FUNﾃ�ﾃグ e nﾃ｣o que ela seja executada dentro do ESCOPO em que ﾃｩ chamada
	}





	funcao real calculaQuadradoManual (real num01, real num02) //Funﾃｧﾃ｣o para CÁLCULO MANUAL (usuﾃ｡rio INFORMA nﾃｺmero)
	{
		real resultadoQuadroManual
		
		resultadoQuadroManual = (num01 * num01) + (num02 * num02)

		mensagemMeio() //Chama funﾃｧﾃ｣o para exibir mensagem
		
		retorne resultadoQuadroManual
	}





	funcao mensagemMeio () //Nﾃ｣o espera parﾃ｢metros. Logo, ao chamar Nﾃグ passamos parﾃ｢metros
	{
		inteiro contador //Contador do PARA. Explicar aos alunos sobre o ESCOPO DO PROCEDIMENTO
		
		para(contador = 0; contador < 50; contador++)
		{
		  escreva ("-")
		}
		
		escreva ("\nVocê fez um cálculo MANUAL. Agora faremos um cálculo AUTOMÁTICO.\n")
		
		para(contador = 0; contador < 50; contador++)
		{
		  escreva ("-")
		}

		escreva("\n")
	}





	funcao mensagemFinal (cadeia texto)
	{
		inteiro contador //Contador do PARA. Explicar aos alunos sobre o ESCOPO DO PROCEDIMENTO
		
		para(contador = 0; contador < 50; contador++)
		{
		  escreva ("-")
		}
		
		escreva ("\nOBRIGADO POR USAR NOSSO SISTEMA!!!\n")
		
		para(contador = 0; contador < 50; contador++)
		{
		  escreva ("-")
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */