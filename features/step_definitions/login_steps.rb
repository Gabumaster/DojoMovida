
Dado("que eu esteja no site da movida") do
    visit 'https://www.movida.com.br/'
  end
  Quando("digito meus dados") do
    find('div[class="name-user-menu"]').click
    find('#btn-login').click
    find('input[id="cpf-login"]').click
    find('input[id="cpf-login"]').fill_in :with => '19535362801'
    find('input[id="password-field"]').click
    find('input[id="password-field"]').fill_in :with => '435465'
    find('button[id="login-button"]').click
  end
  Entao("devo logar no site") do
    sleep 7
    nome = find('div[class="name-user-menu"]').text
    if expect(nome).to eq("ANTONYO")
      puts nome
    end
  end