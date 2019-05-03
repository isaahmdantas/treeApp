class NosController < ApplicationController
  before_action :set_no, only: [:show, :edit, :update, :destroy]

  # GET /nos
  # GET /nos.json
  def index
    @nos = No.all
  end

  # GET /nos/1
  # GET /nos/1.json
  def show
  end

  # GET /nos/new
  def new
    @no = No.new
  end

  # GET /nos/1/edit
  def edit
  end

  # POST /nos
  # POST /nos.json
  def create
    @no = No.new(no_params)

    respond_to do |format|
      if @no.save
        format.html { redirect_to @no, notice: 'No was successfully created.' }
        format.json { render :show, status: :created, location: @no }
      else
        format.html { render :new }
        format.json { render json: @no.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nos/1
  # PATCH/PUT /nos/1.json
  def update
    respond_to do |format|
      if @no.update(no_params)
        format.html { redirect_to @no, notice: 'No was successfully updated.' }
        format.json { render :show, status: :ok, location: @no }
      else
        format.html { render :edit }
        format.json { render json: @no.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nos/1
  # DELETE /nos/1.json
  def destroy
    @no.destroy
    respond_to do |format|
      format.html { redirect_to nos_url, notice: 'No was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no
      @no = No.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_params
      params.require(:no).permit(:nome, :no_id, :arvore_id)
    end
end
