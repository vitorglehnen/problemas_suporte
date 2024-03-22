<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

![image](https://github.com/vitorglehnen/problemas_suporte/blob/main/dist/wallpaper.png?raw=true)
<!-- Descrição do Projeto -->
<p>Projeto pessoal desenvolvido para trazer facilidade e organização no atendimento ao cliente, permitindo gravar PROBLEMAS diários ou informações e dados diversos.</p>

<!-- Tabela de Conteúdo -->
<h2>Índice</h2>
<ul>
    <li><a href="#instalacao">Instalação</a></li>
    <li><a href="#utilizacao">Utilização</a></li>
    <li><a href="#sobre">Sobre</a></li>
</ul>

<!-- Instalação -->
<h2 id="instalacao">Instalação</h2>
<p>  <li> 1° passo: Devemos instalar o SGBD Firebird para rodarmos o nosso banco de dados, o download do instalador pode ser feito neste link: http://sourceforge.net/projects/firebird/files/firebird-win64/2.5-Release/Firebird-2.5.0.26074_1_x64.exe/download.
     <li> 2° passo: Basta pegarmos todo o conteúdo dentro do diretório <b>DIST neste repositório e colocar em uma pasta do seu computador (Indico criar uma pasta com o nome "Problemas Suporte" no disco local da sua máquina). 
     <li> 3° passo: Por final, devemos agora abrir o arquivo <b>CONNECT.INI e definir os parametros de inicialização, segue abaixo a explicação sobre cada tag do arquivo: 

![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/e6d481ce-7641-48b2-bb5c-968817d4f4af)
<!-- Utilização --> 
<h2 id="utilizacao">Utilização</h2>
<p>Agora com toda a instalação do sistema finalizada, vamos para a parte de utilização. Para abrir o programa, basta executarmos o <b>ProblemasSuporte.exe que vamos se deparar com a seguinte tela.</p>

![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/649dabcd-8e52-4277-a944-cc199cd32893)

Aqui podemos verificar toda a tela principal do sistema, onde poderá ser cadastrado os MÓDULOS, que podemos definir como se fosse um tópico do PROBLEMA que vai ser cadastrado, desta forma conseguimos ter uma organização boa entre os problemas.

Para cadastrar um MÓDULO novo é bem simples, basta clicarmos no botão de NOVO na parte dos módulos, digitar o nome e depois clicar em salvar.

Depois de ter um MÓDULO cadastrado no sistema, podemos fazer a inserção de um PROBLEMA, é o mesmo processo, basta clicarmos em novo e preenchermos as informações.

![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/1c7589a2-03e0-4bf1-b4d8-5a9f499c63ee)

Um detalhe para a marquinha de MOSTRAR SOMENTE SOLUÇÃO, com este check box, podemos definir um campo único para escrita das informações, eliminando a separação entre DETALHES DO PROBLEMA e SOLUÇÃO.

<br>
<br>

<li> Imagens do problema
<br>
  <br>
Dentro de cada PROBLEMA cadastrado, também podemos cadastrar imagens vinculadas a esse registro.
  
![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/fd55df27-b05c-4a48-8173-3344ebd1b9a7)
  
Estas imagens são salvas no diretório em que foi definido anteriormente no CONNECT.INI, então quando você der dois cliques na tela em cima de uma imagem, ela abrirá no windows
para facilitar a visualização.

<br>
<br>

<li> Pesquisa
<br>
<br>
  Aqui nesta parte também podemos fazer a pesquisa dos nossos PROBLEMAS registrados, caso queira salvar um filtro para que na próxima vez que abrir o sistema ele aparecer fixo pra você,
  basta clicar no botão ao lado que ele salva a informação no usuário no banco de dados.
  
  ![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/b9074884-fa45-4483-a237-bf0221428e08)

<br>
<br>

<li> Preferências
<br>
<br>
  Na parte de cima do sistema, temos a parte de PREFERÊNCIAS do usuário, onde podemos definir parametrizações pessoais.

  ![image](https://github.com/vitorglehnen/problemas_suporte/assets/107063776/76445474-ea8c-4ae4-a915-a4cbe3ac79a1)

<br>
<br>

<h2 id="sobre">Sobre</h2>
  Resolvi desenvolver este projeto para me aprimorar na programação, evoluindo conceitos de POO, Delphi, banco de dados e regra de negócios, e claro,
  facilitando o meu trabalho no meu dia a dia como Suporte Técnico.

<br>
<br>
<footer>
    <p>Copyright &copy; Vitor Gabriel Lehnen</p>
</footer>

</body>
</html>
