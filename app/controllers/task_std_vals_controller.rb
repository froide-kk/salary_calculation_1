class TaskStdValsController < ApplicationController
  before_action :set_task_std_val, only: [:show, :edit, :update, :destroy]

  # GET /task_std_vals
  # GET /task_std_vals.json
  def index
    @task_std_vals = TaskStdVal.all
  end

  # GET /task_std_vals/1
  # GET /task_std_vals/1.json
  def show
  end

  # GET /task_std_vals/new
  def new
    @task_std_val = TaskStdVal.new
  end

  # GET /task_std_vals/1/edit
  def edit
  end

  # POST /task_std_vals
  # POST /task_std_vals.json
  def create
    @task_std_val = TaskStdVal.new(task_std_val_params)

    respond_to do |format|
      if @task_std_val.save
        format.html { redirect_to @task_std_val, notice: 'Task std val was successfully created.' }
        format.json { render :show, status: :created, location: @task_std_val }
      else
        format.html { render :new }
        format.json { render json: @task_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_std_vals/1
  # PATCH/PUT /task_std_vals/1.json
  def update
    respond_to do |format|
      if @task_std_val.update(task_std_val_params)
        format.html { redirect_to @task_std_val, notice: 'Task std val was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_std_val }
      else
        format.html { render :edit }
        format.json { render json: @task_std_val.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_std_vals/1
  # DELETE /task_std_vals/1.json
  def destroy
    @task_std_val.destroy
    respond_to do |format|
      format.html { redirect_to task_std_vals_url, notice: 'Task std val was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_std_val
      @task_std_val = TaskStdVal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_std_val_params
      params.require(:task_std_val).permit(:task_name, :task_val)
    end
end
