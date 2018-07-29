class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all

    @point = Point.all
    #@point.column_names
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create

    #create employee

    @employee = Employee.new(employee_params)

    if @employee.age < 40
        @employee.judgment = "Half"
    else
        @employee.judgment = "NO.2"
    end

    #create employee point

    @point = Point.new
    column_list = Point.column_names

    @point.emp_id = @employee.emp_id
    for index in 2...column_list.size
        if column_list[index] == "is_short_work"
            @point[column_list[index]] = false
        else
            @point[column_list[index]] = 0
        end
    end

    #create employee salary

    @salary = Salary.new
    column_list = Salary.column_names

    @salary.emp_id = @employee.emp_id
    for index in 2...column_list.size
        if column_list[index] == "standard_sal"
            @salary[column_list[index]] = 1000
        end
    end

    respond_to do |format|
      if @employee.save
        @point.save
        @salary.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update

    if @employee.age < 40
        @employee.judgment = "Half"
    else
        @employee.judgment = "NO.2"
    end

    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @point = Point.find(@employee.id)
    @salary = Salary.find(@employee.id)
    @employee.destroy
    @point.destroy
    @salary.destroy


    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:emp_id, :name, :birth, :age, :branch, :department, :task, :residence, :fam_spouse, :fam_except_spouse, :position)
    end
end
