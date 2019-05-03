class ArvoresController < ApplicationController
  before_action :set_arvore, only: [:show, :edit, :update, :destroy]

  # GET /arvores
  # GET /arvores.json
  def index
    @arvores = Arvore.all
  end

  # GET /arvores/1
  # GET /arvores/1.json
  def show
  end

  # GET /arvores/new
  def new
    @arvore = Arvore.new
  end

  # GET /arvores/1/edit
  def edit
  end

  # POST /arvores
  # POST /arvores.json
  def create
    @arvore = Arvore.new(arvore_params)

    respond_to do |format|
      if @arvore.save
        format.html { redirect_to @arvore, notice: 'Arvore was successfully created.' }
        format.json { render :show, status: :created, location: @arvore }
      else
        format.html { render :new }
        format.json { render json: @arvore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arvores/1
  # PATCH/PUT /arvores/1.json
  def update
    respond_to do |format|
      if @arvore.update(arvore_params)
        format.html { redirect_to @arvore, notice: 'Arvore was successfully updated.' }
        format.json { render :show, status: :ok, location: @arvore }
      else
        format.html { render :edit }
        format.json { render json: @arvore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arvores/1
  # DELETE /arvores/1.json
  def destroy
    @arvore.destroy
    respond_to do |format|
      format.html { redirect_to arvores_url, notice: 'Arvore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arvore
      @arvore = Arvore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arvore_params
      params.require(:arvore).permit(:nome)
    end
end
