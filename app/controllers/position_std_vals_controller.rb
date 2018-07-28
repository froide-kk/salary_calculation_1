class PositionStdValsController < ApplicationController
  before_action :set_position_std_val, only: [:show, :edit, :update, :destroy]

  # GET /position_std_vals
  # GET /position_std_vals.json
  def index
    @position_std_vals = PositionStdVal.all
  end

  # GET /position_std_vals/1
  # GET /position_std_vals/1.json
  def show
  end

  # GET /position_std_vals/new
  def new
    @position_std_val = PositionStdVal.new
  end

  # GET /position_std_vals/1/edit
  def edit
  end

  # POST /position_std_vals
  # POST /position_std_vals.json
  def create
    @position_std_val = PositionStdVal.new(position_std_val_params)

    respond_to do |format|
      if @position_std_val.save
        format.html { redirect_to @position_std_val, notice: 'Position std val was successfully created.' }
        format.json { render :show, status: :created, location: @position_std_val }
      else
        format.html { render :new }
        format.json { render json: @position_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_std_vals/1
  # PATCH/PUT /position_std_vals/1.json
  def update
    respond_to do |format|
      if @position_std_val.update(position_std_val_params)
        format.html { redirect_to @position_std_val, notice: 'Position std val was successfully updated.' }
        format.json { render :show, status: :ok, location: @position_std_val }
      else
        format.html { render :edit }
        format.json { render json: @position_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_std_vals/1
  # DELETE /position_std_vals/1.json
  def destroy
    @position_std_val.destroy
    respond_to do |format|
      format.html { redirect_to position_std_vals_url, notice: 'Position std val was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_std_val
      @position_std_val = PositionStdVal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_std_val_params
      params.require(:position_std_val).permit(:position_name, :ability_val, :max_overtime, :pos_val, :pos_inc_val, :pos_std_age)
    end
end
