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
	funcao inicio()
	{
		real num01, num02 //Para as VAR abaixo que são requeridas na FUNÇÃO calculaQuadradoManual
		
		mensagemInicial("BEM-VINDO AO SISTEMA DE CÁLCULO DE QUADRADO!!!") //Chama FUNﾃ�ﾃグ e passa o parﾃ｢metro esperado que ﾃｩ CADEIA

		escreva("Qual o PRIMEIRO número a calcular?\n")
			leia(num01)
		escreva("Qual o SEGUNDO número a calcular?\n")
			leia(num02)

		escreva("O resultado do CáCULO MANUAL: ", calculaQuadradoManual(num01, num02))
		
	     escreva("\nO resultado do primeiro cálculo : ", calculaQuadradoAutomatico (5.0, 6.0))		
	     escreva("\nO resultado do segundo cálculo : ", calculaQuadradoAutomatico (2.0, 4.0), "\n")

	     mensagemFinal("")
	}





	funcao mensagemInicial (cadeia texto) //Funﾃｧﾃ｣o para EXIBIR mensagem inicial
	{
		inteiro contador //Contador do PARA
				
		para(contador = 0; contador < 50; contador++) //Inserir linha ANTES do texto
		{
		  escreva ("-")
		}
		
		escreva ("\n", texto, "\n") //TEXTO refere-se ao nome da VAR cadeia que ﾃｩ esperada
		
		para(contador = 0; contador < 50; contador++) //Inserir linha APﾃ鉄 o texto
		{
		  escreva ("-")
		}

		escreva("\n")
	}





	funcao real calculaQuadradoAutomatico (real num01, real num02) //Funﾃｧﾃ｣o para Cﾃ´CULO AUTOMﾃゝICO (usuﾃ｡rio Nﾃグ informa nﾃｺmero)
	{
		real resultadoQuadroAutomatico
		
		resultadoQuadroAutomatico = (num01 * num01) + (num02 * num02)
		
		retorne resultadoQuadroAutomatico //RETORNE ﾃｩ usado quando esperamos recuperar apenas o RESULTADO da execuﾃｧﾃ｣o da FUNﾃ�ﾃグ e nﾃ｣o que ela seja executada dentro do ESCOPO em que ﾃｩ chamada
	}





	funcao real calculaQuadradoManual (real num01, real num02) //Funﾃｧﾃ｣o para Cﾃ´CULO MANUAL (usuﾃ｡rio INFORMA nﾃｺmero)
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
		
		escreva ("\nVocê 3fez um cálculo MANUAL. Agora faremos um cálculo AUTOMÁTICO.\n")
		
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
 * @POSICAO-CURSOR = 2773; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */