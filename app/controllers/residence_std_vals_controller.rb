class ResidenceStdValsController < ApplicationController
  before_action :set_residence_std_val, only: [:show, :edit, :update, :destroy]

  # GET /residence_std_vals
  # GET /residence_std_vals.json
  def index
    @residence_std_vals = ResidenceStdVal.all
  end

  # GET /residence_std_vals/1
  # GET /residence_std_vals/1.json
  def show
  end

  # GET /residence_std_vals/new
  def new
    @residence_std_val = ResidenceStdVal.new
  end

  # GET /residence_std_vals/1/edit
  def edit
  end

  # POST /residence_std_vals
  # POST /residence_std_vals.json
  def create
    @residence_std_val = ResidenceStdVal.new(residence_std_val_params)

    respond_to do |format|
      if @residence_std_val.save
        format.html { redirect_to @residence_std_val, notice: 'Residence std val was successfully created.' }
        format.json { render :show, status: :created, location: @residence_std_val }
      else
        format.html { render :new }
        format.json { render json: @residence_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residence_std_vals/1
  # PATCH/PUT /residence_std_vals/1.json
  def update
    respond_to do |format|
      if @residence_std_val.update(residence_std_val_params)
        format.html { redirect_to @residence_std_val, notice: 'Residence std val was successfully updated.' }
        format.json { render :show, status: :ok, location: @residence_std_val }
      else
        format.html { render :edit }
        format.json { render json: @residence_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residence_std_vals/1
  # DELETE /residence_std_vals/1.json
  def destroy
    @residence_std_val.destroy
    respond_to do |format|
      format.html { redirect_to residence_std_vals_url, notice: 'Residence std val was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residence_std_val
      @residence_std_val = ResidenceStdVal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def residence_std_val_params
      params.require(:residence_std_val).permit(:residence_name, :residence_spt_val)
    end
end
