class EvaluationStdValsController < ApplicationController
  before_action :set_evaluation_std_val, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_std_vals
  # GET /evaluation_std_vals.json
  def index
    @evaluation_std_vals = EvaluationStdVal.all
  end

  # GET /evaluation_std_vals/1
  # GET /evaluation_std_vals/1.json
  def show
  end

  # GET /evaluation_std_vals/new
  def new
    @evaluation_std_val = EvaluationStdVal.new
  end

  # GET /evaluation_std_vals/1/edit
  def edit
  end

  # POST /evaluation_std_vals
  # POST /evaluation_std_vals.json
  def create
    @evaluation_std_val = EvaluationStdVal.new(evaluation_std_val_params)

    respond_to do |format|
      if @evaluation_std_val.save
        format.html { redirect_to @evaluation_std_val, notice: 'Evaluation std val was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_std_val }
      else
        format.html { render :new }
        format.json { render json: @evaluation_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_std_vals/1
  # PATCH/PUT /evaluation_std_vals/1.json
  def update
    respond_to do |format|
      if @evaluation_std_val.update(evaluation_std_val_params)
        format.html { redirect_to @evaluation_std_val, notice: 'Evaluation std val was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_std_val }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_std_vals/1
  # DELETE /evaluation_std_vals/1.json
  def destroy
    @evaluation_std_val.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_std_vals_url, notice: 'Evaluation std val was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_std_val
      @evaluation_std_val = EvaluationStdVal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_std_val_params
      params.require(:evaluation_std_val).permit(:eval_name, :eval_val)
    end
end
