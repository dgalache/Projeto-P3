feature 'Gerenciar Estoque' do

  scenario 'Incluir Estoque' do 
    visit new_estoque_path
    preencher_e_verificar_estoque
  end

  scenario 'Alterar Estoque' do 
    estoque = FactoryGirl.create(:estoque)
    visit edit_estoque_path(estoque)
    preencher_e_verificar_estoque

  end

   scenario 'Excluir Estoque' do 
    estoque = FactoryGirl.create(:estoque)
    visit estoques_path
    click_link('Destroy')

  end

  def preencher_e_verificar_estoque

    fill_in 'Nome', :with => "Laticínios"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Laticínios'
  end
end