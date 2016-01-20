class MybusinessesController < ApplicationController
  before_action :set_mybusiness, only: [:show, :edit, :update, :destroy]

  # GET /mybusinesses
  # GET /mybusinesses.json
  def index
    if params[:search]
      @mybusinesses = Mybusiness.search(params[:search]).order("created_at DESC")
    else
      @mybusinesses = Mybusiness.all.order('created_at DESC')
    end
  end

  # GET /mybusinesses/1
  # GET /mybusinesses/1.json
  def show
  end

  # GET /mybusinesses/new
  def new
    @mybusiness = Mybusiness.new
  end

  # GET /mybusinesses/1/edit
  def edit
  end

  # POST /mybusinesses
  # POST /mybusinesses.json
  def create
    @mybusiness = Mybusiness.new(mybusiness_params)

    respond_to do |format|
      if @mybusiness.save
        format.html { redirect_to @mybusiness, notice: 'Mybusiness was successfully created.' }
        format.json { render :show, status: :created, location: @mybusiness }
      else
        format.html { render :new }
        format.json { render json: @mybusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybusinesses/1
  # PATCH/PUT /mybusinesses/1.json
  def update
    respond_to do |format|
      if @mybusiness.update(mybusiness_params)
        format.html { redirect_to @mybusiness, notice: 'Mybusiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @mybusiness }
      else
        format.html { render :edit }
        format.json { render json: @mybusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybusinesses/1
  # DELETE /mybusinesses/1.json
  def destroy
    @mybusiness.destroy
    respond_to do |format|
      format.html { redirect_to mybusinesses_url, notice: 'Mybusiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybusiness
      @mybusiness = Mybusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mybusiness_params
      params.require(:mybusiness).permit(:name, :type_of, :category, :district, :village, :contact, :description)
    end
end
