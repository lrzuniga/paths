class RestypesController < ApplicationController
  before_action :set_restype, only: [:show, :edit, :update, :destroy]

  # GET /restypes
  # GET /restypes.json
  def index
    @restypes = Restype.all
  end

  # GET /restypes/1
  # GET /restypes/1.json
  def show
  end

  # GET /restypes/new
  def new
    @restype = Restype.new
  end

  # GET /restypes/1/edit
  def edit
  end

  # POST /restypes
  # POST /restypes.json
  def create
    @restype = Restype.new(restype_params)

    respond_to do |format|
      if @restype.save
        format.html { redirect_to @restype, notice: 'Restype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @restype }
      else
        format.html { render action: 'new' }
        format.json { render json: @restype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restypes/1
  # PATCH/PUT /restypes/1.json
  def update
    respond_to do |format|
      if @restype.update(restype_params)
        format.html { redirect_to @restype, notice: 'Restype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @restype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restypes/1
  # DELETE /restypes/1.json
  def destroy
    @restype.destroy
    respond_to do |format|
      format.html { redirect_to restypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restype
      @restype = Restype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restype_params
      params.require(:restype).permit(:type, :description)
    end
end
