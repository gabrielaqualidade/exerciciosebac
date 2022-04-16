#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no meu carrinho

Contexto: Dado que eu acesse o catalogo de compras da EBAC-SHOP

Esquema de Cenário: Seleção de cor, tamanho e quantidade
Quando eu escolher um <item>
E escolher <cor>, <tamanho> e <quantidade>
Então deve aparecer a <mensagem> de item obrigatório

Exemplos:
produto    | cor        | tamanho | quantidade | mensagem
"short"    | "rosa"     | "PP"    | "8"        | "obrigatório"
"camiseta" | "preto     | "G"     | "5"        | "obrigatório"
"calça"    | "vermelho" | "M"     | "10"       | "obrigatório"

Cenário: Máximo de produtos por venda
Quando eu escolher um "item"
E selecionar a "quantidade"
Então deve aparecer a mensagem "Máximo de 10 produtos por compra"

Cenário: Zerar selecionados
Quando eu "desistir"
E selecionar a opção "limpar"
Então todas as informação devem ser "zeradas"

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: Dado que eu acesse o portal EBAC-SHOP

Quando eu digitar o usuário "gabriela@ebac.com.br"
E a senha "gabi@123"
Então deve abrir a tela de "Checkout"

Quando eu digitar o usuário "gabriel@ebac.com.br"
E a senha "gabi@1223"
Então deve exibir a mensagem de alerta: "Usuário ou senha inválidos"

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto: Dado que eu acesse a tela de cadastro da EBAC-SHOP

Esquema do Cenário: Cadastro de usuário
Quando eu inserir as informações obrigatórias: Nome,Sobrenome, País, Endereço, Cidade, CEP, Telefone, E-mail
E clicar em "Finalizar compra"
Então deve exibir uma Mensagem: "Compra realizada com sucesso"

Exemplos:
Nome     | Sobrenome  | País     | Endereço            | Cidade      | CEP         | Telefone         | E-mail               | Mensagem
"Carla"  | "Oliveira" | "Brasil" | "Av. Interlagos"    | "São Paulo" | "04415-000" | "(11) 998765432" | "carla@ebac.com.br"  | "Compra realizada com sucesso"
"Suzana" | "de Souza" | "Brasil" | "Rua Morumbi"       | "São Paulo" | "03258-000" | "(11) 912345678" | "suzana@ebac.com.br" | "Compra realizada com sucesso"
"Bianca" | "Pereira"  | "Brasil" | "Rua dos Palmitais" | "São Paulo" | "32153-000" | "(11) 914725896" | "bianca@ebac.com.br" | "Compra realizada com sucesso"


Quando eu inserir um E-mail inválido 
E clicar em "Finalizar compra"
Então deve exibir uma Mensagem de alerta: "E-mail inválido. Verificar."

Exemplos:
Nome     | Sobrenome  | País     | Endereço            | Cidade      | CEP         | Telefone         | E-mail                    | Mensagem
"Carla"  | "Oliveira" | "Brasil" | "Av. Interlagos"    | "São Paulo" | "04415-000" | "(11) 998765432" | "carlaol@ebac.com.br"     | "E-mail inválido. Verificar."
"Suzana" | "de Souza" | "Brasil" | "Rua Morumbi"       | "São Paulo" | "03258-000" | "(11) 912345678" | "suzanasouza@ebac.com.br" | "E-mail inválido. Verificar."
"Bianca" | "Pereira"  | "Brasil" | "Rua dos Palmitais" | "São Paulo" | "32153-000" | "(11) 914725896" | "biancap@ebac.com.br"     | "E-mail inválido. Verificar."

Quando eu deixar um dos campos de informações obrigatórias vazio
E clicar em "Finalizar compra"
Então deve exibir uma Mensagem de alerta: "Preencha todos os campos obrigatórios."

Exemplos:
Nome     | Sobrenome  | País     | Endereço            | Cidade      | CEP         | Telefone         | E-mail                    | Mensagem
"Carla"  | "Oliveira" | "Brasil" | "Av. Interlagos"    |             | "04415-000" | "(11) 998765432" | "carlaol@ebac.com.br"     | "Preencha todos os campos obrigatórios."
"Suzana" | "de Souza" | "Brasil" |                     | "São Paulo" | "03258-000" | "(11) 912345678" | "suzanasouza@ebac.com.br" | "Preencha todos os campos obrigatórios."
"Bianca" | "Pereira"  | "Brasil" | "Rua dos Palmitais" | "São Paulo" |             | "(11) 914725896" | "biancap@ebac.com.br"     | "Preencha todos os campos obrigatórios."
