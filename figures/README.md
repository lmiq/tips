# Figuras com qualidade de publicação

## Primeira parte: Gimp

1) Crie suas figuras iniciais nos programas convenientes (VMD, gráficos
em qualquer programa como matplotlib, xmgrace, origin, ou o que for).

Prefira sempre figuras de fundo branco. Papel é branco, portanto o ideal é
fazer figuras que fiquem bem quando impressas, sem ter que mudar o fundo todo
(vale para pôsteres também). Fica mais elegante também. 

Evite colocar "bordas" também, em torno das figuras. Quanto mais limpa a figura
melhor. 

2) Abra as figuras no Gimp. A primeira coisa que você tem que fazer é
eliminar bordas vazias. Para isso, faça: 

`Image -> Autocrop Image`

Algumas vezes o "branco" do fundo da imagem não é realmente branco.
Nesse caso, convém "deletar" o branco. Para isso, clique no ícone que
é um dedo apontando para umas cores ("Select by color"), e clique no
fundo da imagem. Em seguida, delete a seleção (isso vai apagar o fundo,
e ele vai ficar ou "transparente", ou "branco").

Repita o passo 2.

3) Faça sua imagem ter um tamanho razoável:

`Image -> Scale Image`

Escolha resolução de 600dpi, e ajuste o tamanho da imagem,
em centímetros, para algo próximo ao tamanho real que você espera que
a imagem seja impressa (imagine ela no artigo/tese).  

4) Exporte a imagem como "png". (algumas revistas pedem TIFF, nesse
caso exporte como TIFF, usando a compressão LZW).  

`File -> Export As... `

(a compressão LZW é uma das opções que aparece quando você tenta
exportar como TIFF). 

5) Se quiser salve a figura no formato do GIMP (.xcf) que permite
abrir outra vez e continuar editando, desfazendo o que foi feito etc.
Eu geralmente não uso isto.

7) Se esta figura já é a figura final do artigo, está pronto.

## Segunda parte: Inkscape e a composição de figuras de múltiplas partes

Se sua figura tem múltiplas partes (A, B, C) que não puderam ser criadas
de forma satisfatória no programa original, a melhor ferramenta para
compor a figura é um programa de desenho vetorial. O Inkscape é a opção
livre e é totalmente satisfatório.

1) Abra o Inkscape. 

2) Importe suas figuras, criada na primeira parte, no programa. 

`File -> Import`

(pode deixar as opções padrão)

3) Monte a figura completa, com os A, B, Cs, linhas flechas, etc. Tem
que brincar um pouco com o Inkscape para fazer isso de maneira
eficiente, mas não é muito complicado. Há ferramentas para alinhar as
figuras, os textos, etc.  

3) Terminada a montagem da figura, agora sim, salve para possíveis
futuras edições, no formato vetorial (.svg):

`File -> Save`

4) Selecione (com a flechinha do menu) toda a figura que você quer que
seja a figura final. O arquivo pode ter mais coisas, mas agora você vai
exportar só a seleção que você quer que seja a figura do artigo.  

5) Exportando a figura:

`File -> Export PNG Image`

Vai aparecer um menu do lado direito, com várias opções. Seleciona a
resolução desejada (600 dpi). Geralmente eu salvo uma figura em 300dpi
também para colocar no texto, e guardo a de 600dpi só para a submissão
final, se pedirem.

Escolha o nome do arquivo no campo `Filename` e exporte. 

6) Algumas vezes, esta figura ainda pode ser aberta no Gimp e os passos
da primeira parte podem ser feitos sobre ela.

## Flatten Image

As figuras geradas no Inkscape, e às vezes em outros programas, quando
são salvas em formato "PNG", podem ter fundos "transparentes". Às vezes
isso é bom, mas outras vezes faz com que PDFs gerados fiquem ruins.
Nesses casos, é bom remover todas as transparências e fazer a figura ter
efetivamente um fundo branco. Para isso, entre no Gimp e faça o
seguinte:

`Image -> Flatten Image`

E exporte novamente no formato original da figura.











