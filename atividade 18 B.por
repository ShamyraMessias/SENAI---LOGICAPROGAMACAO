programa
{

	inteiro vetor[9999], vetorFinal[9999]
	inteiro numIni, numFim, linha, sequenciaNumerica, numCont
	real calculo
	
	
	funcao inicio()
	{		
		escreva("Qual primeiro número? ")
			leia(numIni)
		
		escreva("Qual o segundo número? ")
			leia(numFim)

		sequenciaNumerica = (numFim - numIni)
		
		alimentaVetor()
		
		novoVetor()

		imprimir()

	}
		
	
	
	funcao alimentaVetor()
	{
		para(inteiro i = 0; i <= sequenciaNumerica; i++)
		{
			vetor[i] = numIni
			numIni++
			escreva("\nPRIMEIRO TESTE")
		}
	}
	
	
	

	funcao novoVetor()
	{
		para(inteiro i = 0; i <= sequenciaNumerica; i++)
			{
				calculo = vetor[i] % 2

				se(calculo == 1)
				{
					vetorFinal[i] = vetor[i]
				}
			}
	}

		funcao imprimir()
	{
		escreva("\n\nOS NÚMERO ÍMPARES SÃO COMPOSTOS POR: \n")
		
		para(inteiro i = 0; i < sequenciaNumerica; i++)
			{
				se(vetorFinal[i] % 2 == 1)
				{
					escreva("")
				}
				senao
				{
					i++
					escreva(vetorFinal[i], "\n")
				}
			}
	}	
} 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 703; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */