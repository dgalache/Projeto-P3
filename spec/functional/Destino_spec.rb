feature 'Gerenciar Destino' do

  scenario 'Incluir Destino' do 
    visit new_destino_path
    preencher_e_verificar_destino
  end

  scenario 'Alterar Destino' do 
    destino = FactoryGirl.create(:destino)
    visit edit_destino_path(destino)
    preencher_e_verificar_destino

  end

   scenario 'Excluir destino' do 
    destino = FactoryGirl.create(:destino)
    visit destinos_path
    click_link('Destroy')

  end

  def preencher_e_verificar_destino

    fill_in 'Nome Estabelecimento',     :with => "SuperBom"
    fill_in 'Descrição',     :with => "Super Mercado"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: SuperBom'
    expect(page).to have_content 'Descricao: Super Mercado'
  end
end