class MydataController < ApplicationController
  before_action :set_mydatum, only: [:show, :edit, :update, :destroy]

  # GET /mydata
  # GET /mydata.json
  def index
    @mydata = Mydatum.all
  end

  # GET /mydata/1
  # GET /mydata/1.json
  def show
  end

  # GET /mydata/new
  def new
    @mydatum = Mydatum.new
  end

  # GET /mydata/1/edit
  def edit
  end

  # POST /mydata
  # POST /mydata.json
  def create
    @mydatum = Mydatum.new(mydatum_params)

    respond_to do |format|
      if @mydatum.save
        format.html { redirect_to @mydatum, notice: 'Registro se guardo correctamente.' }
        format.json { render :show, status: :created, location: @mydatum }
      else
        format.html { render :new }
        format.json { render json: @mydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mydata/1
  # PATCH/PUT /mydata/1.json
  def update
    respond_to do |format|
      if @mydatum.update(mydatum_params)
        format.html { redirect_to @mydatum, notice: 'Registro se edito correctamente.' }
        format.json { render :show, status: :ok, location: @mydatum }
      else
        format.html { render :edit }
        format.json { render json: @mydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydata/1
  # DELETE /mydata/1.json
  def destroy
    @mydatum.destroy
    respond_to do |format|
      format.html { redirect_to mydata_url, notice: 'Registro dse elimino correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mydatum
      @mydatum = Mydatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mydatum_params
      params.require(:mydatum).permit(:name, :lastname)
    end
end
