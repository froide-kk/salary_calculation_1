class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all


    #@point.column_names
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @salaries = Salary.all
    @points = Point.all
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
    @employee = Employee.new(employee_params)

    # load standard values

    @etc_std_val = EtcStdVal.find(1)

    @position_std_val = PositionStdVal.all
    psv = @position_std_val.where("position_name = ?", @employee.position).first



    @task_std_val = TaskStdVal.all
    tsv = @task_std_val.where("task_name = ?", @employee.task).first

    @residence_std_val = ResidenceStdVal.all
    rsv = @residence_std_val.where("residence_name = ?", @employee.residence).first



    #create employee

    if @employee.age < 40
        @employee.judgment = "Half"
    else
        @employee.judgment = "NO.2"
    end

    #create employee point

    @point = Point.new
    column_list = Point.column_names
    @point.emp_id = @employee.emp_id



    for index in 3...column_list.size
        if column_list[index] == "is_short_work"
            @point[column_list[index]] = false
        elsif column_list[index] == "age_ad"
            case @employee.position
            when "Head of Total Department"
                @point.age_ad = 0
            when "Head of Department"
                @point.age_ad = 0
            when "Deputy Director"
                @point.age_ad = 0
            when "Manager"
                @point.age_ad = 0
            when "Assistant Manager"
                @point.age_ad = @employee.age - psv.pos_std_age
            when "Leader"
                @point.age_ad = @employee.age - psv.pos_std_age
            when "Assistant Leader"
                @point.age_ad = @employee.age - psv.pos_std_age
            when "Normal Staff"
                @point.age_ad = @employee.age - psv.pos_std_age
            when "Second Rookie"
                @point.age_ad = @employee.age - psv.pos_std_age
            when "Rookie"
                @point.age_ad = @employee.age - psv.pos_std_age
            end
        else
            @point[column_list[index]] = 0
        end
    end

    #create employee salary

    @salary = Salary.new
    column_list = Salary.column_names
    @salary.emp_id = @employee.emp_id

    basic = @etc_std_val.std_salary_val + psv.ability_val + psv.pos_val + tsv.task_val + @etc_std_val.praise_val + rsv.residence_spt_val
    total = basic + (@point.overtime * (basic / @etc_std_val.mon_avg_worktime * 1.25)) + ((@employee.fam_spouse * 10000) + (@employee.fam_except_spouse * 5000))
    # non auto.... how??
    last_total = total - 20000
    last_hour = 1100

    @evaluation_std_vals = EvaluationStdVal.all

    for index in 3...column_list.size
        case column_list[index]
        when "standard_sal"
            if @point.is_short_work
                @salary[column_list[index]] = (0.75 * @etc_std_val.std_salary_val)
            else
                @salary[column_list[index]] = @etc_std_val.std_salary_val
            end
        when "ability_sal"
            point_sal = 0
            #eval_list.each do |e|
                #point_sal =  point_sal + (@point[e] * @evaluation_std_val.where("eval_name = ?", e).first)
            #end
            # need array...

            point_sal = point_sal + @point["isms"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "isms").first.eval_val
            point_sal = point_sal + @point["health"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "health").first.eval_val
            point_sal = point_sal + @point["small_group"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "small_group").first.eval_val
            point_sal = point_sal + @point["eval_mgm"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "eval_mgm").first.eval_val
            point_sal = point_sal + @point["eval_tec"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "eval_tec").first.eval_val
            point_sal = point_sal + @point["adjustment"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "adjustment").first.eval_val

            @salary[column_list[index]] = psv.ability_val + point_sal
        when "position_sal"
            @salary[column_list[index]] = psv.pos_val
        when "task_sal"
            @salary[column_list[index]] = tsv.task_val
        when "praise_sal"
            @salary[column_list[index]] = @etc_std_val.praise_val
        when "residence_spt_sal"
            @salary[column_list[index]] = rsv.residence_spt_val
        when "basic_sal"
            @salary[column_list[index]] = basic
        when "hour_sal"
            @salary[column_list[index]] = basic / @etc_std_val.mon_avg_worktime
        when "over_hour_sal"
            @salary[column_list[index]] = basic / @etc_std_val.mon_avg_worktime * 1.25
        when "over_sal"
            @salary[column_list[index]] = @point.overtime * (basic / @etc_std_val.mon_avg_worktime * 1.25)
        when "fam_sal"
            @salary[column_list[index]] = (@employee.fam_spouse * 10000) + (@employee.fam_except_spouse * 5000)
        when "total_sal"
            @salary[column_list[index]] = total
        when "last_total_sal"
            @salary[column_list[index]] = last_total
        when "diff_total_sal"
            @salary[column_list[index]] = total - last_total
        when "rate"
            @salary[column_list[index]] = (total - last_total) / last_total
        when "last_hour_sal"
            @salary[column_list[index]] = last_hour
        when "diff_hour_sal"
            @salary[column_list[index]] = (basic / @etc_std_val.mon_avg_worktime) - last_hour
        when "last_rate"
            @salary[column_list[index]] = ((basic / @etc_std_val.mon_avg_worktime) - last_hour) / (basic / @etc_std_val.mon_avg_worktime)
        end
    end

    respond_to do |format|
      if @employee.save
        @point.employee_id = @employee.id
        @salary.employee_id = @employee.id
        @point.save
        @salary.save
        format.html { redirect_to "/employees", notice: 'Employee was successfully created.' }
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
    # load standard values

    @etc_std_val = EtcStdVal.find(1)

    @position_std_val = PositionStdVal.all
    psv = @position_std_val.where("position_name = ?", @employee.position).first

    @task_std_val = TaskStdVal.all
    tsv = @task_std_val.where("task_name = ?", @employee.task).first

    @residence_std_val = ResidenceStdVal.all
    rsv = @residence_std_val.where("residence_name = ?", @employee.residence).first

    # update employee

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
      params.require(:employee).permit(:id, :emp_id, :name, :birth, :age, :branch, :department, :task, :residence, :fam_spouse, :fam_except_spouse, :position)
    end
end
