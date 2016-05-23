feature 'Gerenciar SaidaProduto' do

  before(:each) do
    @destino = create(:destino, nome: "SuperBom")
    @itemProduto = create(:itemProduto, quantidade: "5")
  end

  let(:dados) do {
    data: "01/01/2016",
    utilizador: "João",
    itemProduto: "5",
    nome: "SuperBom"
   }
  end

  scenario 'Incluir SaidaProduto' do #, :js => true  do
    visit new_entrada_produto_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterr SaidaProduto' do #, :js => true  do
    entrada_produto = FactoryGirl.create(:entrada_produto, destino: @destino, itemProduto: @itemProduto)
    visit edit_entrada_produto_path(entrada_produto)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir SaidaProduto' do #, :js => true  do
    entrada_produto = FactoryGirl.create(:entrada_produto, destino: @destino, itemProduto: @itemProduto)
    visit entrada_produtos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    fill_in 'Data Entrada',  with: dados[:data]
    fill_in 'Utilizador',  with: dados[:utilizador]
    select dados[:quantidade], from: "Quantidade" 
    select dados[:nome], from: "Destino"
  end
 
  def verificar(dados)
    page.should have_content "Data: #{dados[:data]}"
    page.should have_content "Utilizador: #{dados[:utilizador]}"
    page.should have_content "Itemproduto: #{dados[:quantidade]}"
    page.should have_content "Destino: #{dados[:nome]}"
  end
end