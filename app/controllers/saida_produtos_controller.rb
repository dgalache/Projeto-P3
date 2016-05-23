class SaidaProdutosController < ApplicationController
  before_action :set_saida_produto, only: [:show, :edit, :update, :destroy]

  # GET /saida_produtos
  # GET /saida_produtos.json
  def index
    @saida_produtos = SaidaProduto.all
  end

  # GET /saida_produtos/1
  # GET /saida_produtos/1.json
  def show
  end

  # GET /saida_produtos/new
  def new
    @saida_produto = SaidaProduto.new
  end

  # GET /saida_produtos/1/edit
  def edit
  end

  # POST /saida_produtos
  # POST /saida_produtos.json
  def create
    @saida_produto = SaidaProduto.new(saida_produto_params)

    respond_to do |format|
      if @saida_produto.save
        format.html { redirect_to @saida_produto, notice: 'Saida produto was successfully created.' }
        format.json { render :show, status: :created, location: @saida_produto }
      else
        format.html { render :new }
        format.json { render json: @saida_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saida_produtos/1
  # PATCH/PUT /saida_produtos/1.json
  def update
    respond_to do |format|
      if @saida_produto.update(saida_produto_params)
        format.html { redirect_to @saida_produto, notice: 'Saida produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @saida_produto }
      else
        format.html { render :edit }
        format.json { render json: @saida_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saida_produtos/1
  # DELETE /saida_produtos/1.json
  def destroy
    @saida_produto.destroy
    respond_to do |format|
      format.html { redirect_to saida_produtos_url, notice: 'Saida produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saida_produto
      @saida_produto = SaidaProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saida_produto_params
      params.require(:saida_produto).permit(:data, :utilizador, :itemProduto_id, :destino_id)
    end
end
