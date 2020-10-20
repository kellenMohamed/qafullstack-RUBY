#language: pt
@regressivo
Funcionalidade: Criar Conta
Como um usuário do site QArentena Demo
Queria criar conta DemoPara receber noticias sobre Qualidade de software


@cadastro_valido_faker
Cenário: Cadastrar usuário com dados válidos
Dado que acesso o cadastro de um usuário
   E preencho os campos do formulário com dados válidos
Quando confirmo o cadastro
Então o sistema deve exibir a mensagem de boas vindas