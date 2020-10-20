
@cadastro_valido_exemplos
Esquema de Cenário: Cadastrar usuário com dados válidos
Dado que acesso o cadastro de um usuário
   E preencho os campos do formulário <nome>,<sobrenome>,<email>e <cpf>
Quando confirmo o cadastro
Então o sistema deve exibir a <mensagem> de boas vindas
Exemplos:
| nome      | sobrenome | email                 | cpf           | mensagem |
|'kellen'   | 'Mohamed' | 'kellen@belotto.com'  | '123456789'   | 'aa' |
|'Julio'    | 'Silva'   | 'julio@silva.com.br'  | '987654321'   | 'bb' |
|'Fred      | 'Santos'  | '@Fred@fred.com'      | '147258369'   | 'vv' |