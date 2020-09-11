
Dado("que eu esteja na pagina de cadastro do site") do
 visit'https://www.movida.com.br/'
 sleep 2
end

Quando("realizo a criação da conta") do
  find('div[class="name-user-menu"]').click
  find('a[class="user-menu-link-out"]').click
  find('input[class="form-control cpf"]').fill_in :with => '19535362801'
  find('input[id="nome"]').fill_in :with => 'Gabu'
  find('label[for="feminino"]').click
  find('input[id="data_nasc"]').fill_in :with => '04071985'
  find('input[id="telefone"]').fill_in :with => '1112341234'
  find('input[id="celular"]').fill_in :with => '11123412341'
  find(:xpath, '(//input[@id="email"])[1]').fill_in :with => 'gabriel.silva6@nextel.com.br'
  find('input[id="email_conf"]').fill_in :with => 'gabriel.silva6@nextel.com.br'
  find('input[id="cep"]').fill_in :with => '01234567'
  find('input[id="logradouro"]').fill_in :with => 'Avenida Cupecê'
  find('input[id="numero"]').fill_in :with => '6062'
  find('input[id="complemento"]').fill_in :with => 'Bl8 Ap 63'
  find('input[id="bairro"]').fill_in :with => 'Jardim Miriam'
  find('select[id="Pais"]').click
  find('option[value="1"]').click
  find('select[id="uf_sel"]').click
  find('option[value="SP"]').click
  find('select[id="cidade_sel"]').click
  find('option[value="3537909"]').click
  find('input[id="senha_cadastro"]').fill_in :with => '123456'
  find('input[id="senha_conf"]').fill_in :with => '123456'
  binding.pry
end

Então("devo logar no site com os dados criados") do
  pending # Write code here that turns the phrase above into concrete actions
end