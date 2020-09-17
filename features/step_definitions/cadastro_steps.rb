
Dado("que eu esteja na pagina de cadastro do site") do
 visit'https://www.movida.com.br/'
 sleep 2
end

Quando("realizo a criação da conta") do
  Faker::Config.locale = 'pt-BR'
  cpf = Faker::CPF.numeric
  nome = Faker::Games::Zelda.location
  telnumero = Faker::PhoneNumber.phone_number
  datanasc = Faker::Date.birthday(min_age: 35, max_age: 50).strftime("%d/%m/%Y")
  email = Faker::Internet.free_email
  confemail = email


  find('div[class="name-user-menu"]').click
  find('a[class="user-menu-link-out"]').click
  find('input[class="form-control cpf"]').fill_in :with => cpf
  find('input[id="nome"]').fill_in :with => nome
  find('label[for="feminino"]').click
  find('input[id="data_nasc"]').fill_in :with => datanasc
  find('input[id="telefone"]').fill_in :with => telnumero
  find('input[id="celular"]').fill_in :with => '11923412341'
  find(:xpath, '(//input[@id="email"])[1]').fill_in :with => email
  find('input[id="email_conf"]').fill_in :with => confemail
  find('input[id="cep"]').fill_in :with => '01234567'
  find('input[id="logradouro"]').fill_in :with => 'Avenida Copopencio'
  find('input[id="numero"]').fill_in :with => '413'
  find('input[id="complemento"]').fill_in :with => 'Ap24'
  find('input[id="bairro"]').fill_in :with => 'Jardim Sebostilho'
  find('select[id="Pais"]').click
  find('option[value="1"]').click
  find('select[id="uf_sel"]').click
  find('option[value="SP"]').click
  find('select[id="cidade_sel"]').click
  find('option[value="3537909"]').click
  find('input[id="senha_cadastro"]').fill_in :with => '123456'
  find('input[id="senha_conf"]').fill_in :with => '123456'
end

Então("devo logar no site com os dados criados") do
  find('button[id="btnEnviaDados"]').click
  $wait.until {has_css?('div[class="alert alert-warning"]')}
  # binding.pry
  # $wait.until { find('div[class="alert alert-warning"]') }
  # $wait.until (By.xpath, '(//div[@class="alert alert-warning"])')
  i = find('div[class="alert alert-warning"]').text[0..29]
  puts find('div[class="alert alert-warning"]').text if expect(i).to eq("Cadastro efetuado com sucesso.")
end

#   sleep 30
#   find('div[class="alert alert-warning"]').text
#   puts 'Cadastro efetuado com sucesso.'

 