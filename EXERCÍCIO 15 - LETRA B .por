programa
{
	
	funcao inicio()
	{
		inteiro contador, numero
		cadeia produto, junta
		junta = ""

		escreva("Quantos produtos você deseja cadastrar? ")
		leia(numero)

		para (contador = 1; contador <= numero; contador++)
		{
		escreva("Digite o nome do produto: ")
		leia(produto)

		junta = junta + "," + produto
		}
		escreva("Os produtos cadastrados foram", junta,"\n")
	}
}
	




		
  
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */