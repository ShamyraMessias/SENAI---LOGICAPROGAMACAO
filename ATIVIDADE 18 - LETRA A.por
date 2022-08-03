programa
{
	real salariobruto = 0, salarioLiquido = 0
	real descontoInss 
	cadeia nomeFuncionario, cargo

	funcao inicio()
	{
		escreva("Digite o nome do funcionário: ")
			leia(nomeFuncionario)

		escreva("Qual o salário bruto do funcionário?")
			leia(salariobruto)

		escreva("Qual é o cargo do funcionário na empresa:")
			leia(cargo)

		calculo(salariobruto)
		
		
		escreva ("\nNome do Funcionário: " , nomeFuncionario,"\ncargo:" , cargo , "\nSalário Bruto:", salariobruto,  "\nSalário Liquido:", salarioLiquido)

	}


	funcao calculo(real salariobruto)
	{
		se(salariobruto <= 1212.00)
		{
			  salarioLiquido = salariobruto - (( salariobruto * 7.5) / 100) 
		}

		senao se(salariobruto < 1212.01 ou salariobruto <= 2427.35)
		{
			  salarioLiquido = salariobruto - (( salariobruto * 9.0) / 100) 
		}

		senao se(salariobruto < 2427.36 ou salariobruto <= 3641.03)
		{
			  salarioLiquido = salariobruto - (( salariobruto * 12.0) / 100) 
		}

		senao se(salariobruto < 3641.04 ou salariobruto <= 7087.22)
		{
			  salarioLiquido = salariobruto - (( salariobruto * 14.0) / 100) 
		}
	 	senao se (salariobruto > 7087.22)
	 	{
			escreva("\nNão será descontado o INSS")
			salarioLiquido = salariobruto
	 	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */