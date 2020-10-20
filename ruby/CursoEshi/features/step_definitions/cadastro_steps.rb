Dado("que acesso o cadastro de um usuárioE preencho os campos do formulário com dados válidos") do
    @cadastro_page = CadastroPage.new
    @cadastro_page.load   
end

Dado ("preencho os campos do formulário com dados válidos") do
    @cadastro_page.preencher_form_com_dados_pf
end
  
Quando("confirmo o cadastro") do
    @cadastro_page.clicar_finalizar
end
  
Então("o sistema deve exibir a mensagem de boas vindas") do
    @CadastroPage.wait_until_msg_sucesso_visible
     expect(@cadastro_page).to have_content 'Cadastro efetuado com sucesso. Obrigado'
end

Dado ("preencho os campos do formulário com dados válidos") do
  @cadastrar_page.preencher_dados_pf_aleatorio
end

Dado ("preencho os campos do formulário {string},{string},{string},{string}") do |nome, sobrenome, email, cpf|
  @CadastroPage.preencher_forms_com_dados_informados(nome,sobrenome,email,cpf)
end

Então("o sistema deve exibir a mensagem de boas vindas") do
  expect(@cadastro_page).to have_content msgsucesso
end