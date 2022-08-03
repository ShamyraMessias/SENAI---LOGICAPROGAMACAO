programa
{
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		inteiro quantidadeProduto, linha, coluna, totalColunas, totalLinhas
		real converteAnual, mediaMensal, quantidadeEstoque, valorAtual, converteValorMedio, valorMedioConvertido
		cadeia nomeProduto, quantidadeAnual, valorMedio, nomeCompra
		cadeia matrizGeral[999][6]
		inteiro desejoContinuacao
		logico achouProduto = falso

		totalColunas = 4
		
		
		escreva("\nSeja bem-vindo a LISTA DE COMPRAS INTELIGENTE!!!")
		escreva("\nAqui você cadastra seus itens e nós te falamos se deve ou não comprar naquele momento. \n\n")

		escreva("\nInforme a QUANTIDADE de produtos que deseja cadastrar nesse momento: \n")
			leia(quantidadeProduto)
		

		
		para(linha = 0; linha < quantidadeProduto; linha++)
		{
			para(coluna = 0; coluna < totalColunas; coluna++)
			{
				escreva("\nInforme o NOME do produto: \n")
					leia(nomeProduto)
					matrizGeral[linha][coluna] = nomeProduto
					coluna++
				escreva("\nInforme a QUANTIDADE anual que consome: \n")
					leia(quantidadeAnual)
					matrizGeral[linha][coluna] = quantidadeAnual
					coluna++
				escreva("\nInforme a VALOR MÉDIO do produto: \n")
					leia(valorMedio)
					matrizGeral[linha][coluna] = valorMedio
					coluna++
			}
		}

		
		
		para(linha = 0; linha < quantidadeProduto; linha++)
		{		
			converteAnual = Tipos.cadeia_para_real(matrizGeral[linha][1])
			mediaMensal = converteAnual / 12
			escreva("\n\nA média mensal é de: ", mediaMensal)
		}



		para(linha = 0; linha < quantidadeProduto; linha++)
		{
			converteValorMedio = Tipos.cadeia_para_real(matrizGeral[linha][2])
			valorMedioConvertido = converteValorMedio
			escreva("\n\nO valor médio informado para o produto é de: ", valorMedioConvertido)
		}



		escreva("\n\n\nO que você deseja agora?")
		escreva("\nDigite [1] para INICIAR NOVA COMPRA ou digite [2] para FINALIZAR o sistema.\n")
			leia(desejoContinuacao)				


		escolha (desejoContinuacao)	
		{
			caso 1: 
		 		escreva("\n\nÓtimo! Vamos então iniciar uma nova compra! \n\n")
				escreva ("Qual o produto que deseja comprar??? \n")
				leia(nomeCompra)
				
				para (linha = 0; linha < quantidadeProduto; linha++)
				{
					para(coluna = 0; coluna < totalColunas; coluna++)
					{
						se (matrizGeral[linha][coluna] == nomeCompra)
						{
							achouProduto = verdadeiro  
						}
					}
				}
		 		pare
		 	
		 	caso 2: 
		 		escreva ("Sistema ENCERRADO. Estamos à sua disposição quando desejar!")
		 		pare
		 	
		 	caso contrario:
		 		escreva("Opção Inválida!!! Tente novamente.")
		 		pare
		}

		
		se(achouProduto == verdadeiro)
		{
			escreva("\nProduto já cadastrado. \n")
			escreva("Informe a QUANTIDADE desse produto que você possui no ESTOQUE: \n")
				leia(quantidadeEstoque)
			escreva("Informe o VALOR ATUAL do produto: \n")
				leia(valorAtual)
			
			para(linha = 0; linha < quantidadeProduto; linha++)
			{		
				converteAnual = Tipos.cadeia_para_real(matrizGeral[linha][1])
				mediaMensal = converteAnual / 12
				converteValorMedio = Tipos.cadeia_para_real(matrizGeral[linha][2])
				valorMedioConvertido = converteValorMedio
				
				se(quantidadeEstoque < mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("Além disso o produto está com VALOR ACESSÍVEL.\n")
					escreva("Você deve COMPRAR O PRODUTO AGORA MESMO.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL.\n")
					escreva("Você deve COMPRAR O PRODUTO agora mesmo.\n")
					pare
				}
				senao se(quantidadeEstoque < mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque BAIXO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Você deve COMPRAR O PRODUTO assim que for POSSÍVEL dentro das condições financeiras que possui.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ABAIXO do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL do geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque > mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque ALTO do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do geralmente praticado.\n")
					escreva("Dessa forma, recomendamos NÃO COMPRAR O PRODUTO.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual < valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO BAIXO em relação ao geralmente praticado.\n")
					escreva("Dessa forma, recomendamos COMPRAR O PRODUTO para ECONOMIZAR recursos financeiros.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual == valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ESTÁVEL em relação ao geralmente praticado.\n")
					escreva("Dessa forma, você SÓ DEVE COMPRAR o produto se houver alguma necessidade específica.\n")
					pare
				}
				senao se(quantidadeEstoque == mediaMensal e valorAtual > valorMedioConvertido)
				{
					escreva("Você está com estoque NORMAL do produto.\n")
					escreva("O produto está com VALOR MÉDIO ACIMA do valor geralmente praticado.\n")
					escreva("Dessa forma, você NÃO DEVE COMPRAR o produto.\n")
					pare
				}
			}			
		}
		
		
		
		se(achouProduto == falso)
		{
			escreva("\nProduto NÃO cadastrado. Primeiro você deve cadastrar o produto. \n")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */