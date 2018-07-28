class EtcStdValsController < ApplicationController
  before_action :set_etc_std_val, only: [:show, :edit, :update, :destroy]

  # GET /etc_std_vals
  # GET /etc_std_vals.json
  def index
    @etc_std_vals = EtcStdVal.all
  end

  # GET /etc_std_vals/1
  # GET /etc_std_vals/1.json
  def show
  end

  # GET /etc_std_vals/new
  def new
    @etc_std_val = EtcStdVal.new
  end

  # GET /etc_std_vals/1/edit
  def edit
  end

  # POST /etc_std_vals
  # POST /etc_std_vals.json
  def create
    @etc_std_val = EtcStdVal.new(etc_std_val_params)

    respond_to do |format|
      if @etc_std_val.save
        format.html { redirect_to @etc_std_val, notice: 'Etc std val was successfully created.' }
        format.json { render :show, status: :created, location: @etc_std_val }
      else
        format.html { render :new }
        format.json { render json: @etc_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etc_std_vals/1
  # PATCH/PUT /etc_std_vals/1.json
  def update
    respond_to do |format|
      if @etc_std_val.update(etc_std_val_params)
        format.html { redirect_to @etc_std_val, notice: 'Etc std val was successfully updated.' }
        format.json { render :show, status: :ok, location: @etc_std_val }
      else
        format.html { render :edit }
        format.json { render json: @etc_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etc_std_vals/1
  # DELETE /etc_std_vals/1.json
  def destroy
    @etc_std_val.destroy
    respond_to do |format|
      format.html { redirect_to etc_std_vals_url, notice: 'Etc std val was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etc_std_val
      @etc_std_val = EtcStdVal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etc_std_val_params
      params.require(:etc_std_val).permit(:praise_val, :mon_avg_worktime, :mon_short_worktime, :holiday_val, :std_salary_val)
    end
end
