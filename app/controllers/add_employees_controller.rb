class AddEmployeesController < ApplicationController
  before_action :set_add_employee, only: [:show, :edit, :update, :destroy]

  # GET /add_employees
  # GET /add_employees.json
  def index
    @add_employees = AddEmployee.all
  end

  # GET /add_employees/1
  # GET /add_employees/1.json
  def show
  end

  # GET /add_employees/new
  def new
    @add_employee = AddEmployee.new
  end

  # GET /add_employees/1/edit
  def edit
  end

  # POST /add_employees
  # POST /add_employees.json
  def create
    @add_employee = AddEmployee.new(add_employee_params)

    respond_to do |format|
      if @add_employee.save
        format.html { redirect_to @add_employee, notice: 'Add employee was successfully created.' }
        format.json { render :show, status: :created, location: @add_employee }
      else
        format.html { render :new }
        format.json { render json: @add_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_employees/1
  # PATCH/PUT /add_employees/1.json
  def update
    respond_to do |format|
      if @add_employee.update(add_employee_params)
        format.html { redirect_to @add_employee, notice: 'Add employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_employee }
      else
        format.html { render :edit }
        format.json { render json: @add_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_employees/1
  # DELETE /add_employees/1.json
  def destroy
    @add_employee.destroy
    respond_to do |format|
      format.html { redirect_to add_employees_url, notice: 'Add employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_employee
      @add_employee = AddEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_employee_params
      params.fetch(:add_employee, {})
    end
end
