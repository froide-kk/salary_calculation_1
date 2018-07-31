class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]
  before_action :set_salary, only: [:show, :edit, :update, :destroy]

  # GET /points
  # GET /points.json
  def index
    @points = Point.all
  end

  # GET /points/1
  # GET /points/1.json
  def show
  end

  # GET /points/new
  def new
    @point = Point.new
  end

  # GET /points/1/edit
  def edit
  end

  # POST /points
  # POST /points.json
  def create
    @point = Point.new(point_params)

    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, notice: 'Point was successfully created.' }
        format.json { render :show, status: :created, location: @point }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    @salary = Salary.find(@point.id)
    column_list = Point.column_names


    @position_std_val = PositionStdVal.all
    psv = @position_std_val.where("position_name = ?", @employee.position).first
    @evaluation_std_vals = EvaluationStdVal.all

    ability_sal = psv.ability_val

    for index in 3...column_list.size
        case @point[column_list[index]]
        when "age_ad"
            ability_sal = ability_sal + (@point["age_ad"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "age_ad").first.eval_val)
        when "isms"
            ability_sal = ability_sal + (@point["isms"] * @evaluation_std_vals.select("eval_val").where("eval_name = ?", "isms").first.eval_val)      
        end

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

    end
    respond_to do |format|
      if @point.update(point_params)
        @salary.update(:ability_sal => "5000")
        format.html { redirect_to @point, notice: 'Point was successfully updated.' }
        format.json { render :show, status: :ok, location: @point }
      else
        format.html { render :edit }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to points_url, notice: 'Point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end
    def set_salary
      @salary = Salary.find(@point.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_params
      params.require(:point).permit(:emp_id, :age_ad, :isms, :health, :small_group, :eval_mgm, :eval_tec, :adjustment, :is_short_work, :overtime)
    end
    def salary_params
      params.require(:salary).permit(:emp_id, :standard_sal, :ability_sal, :position_sal, :task_sal, :praise_sal, :residence_spt_sal, :basic_sal, :hour_sal, :over_hour_sal, :over_sal, :fam_sal, :total_sal, :last_total_sal, :diff_total_sal, :rate, :last_hour_sal, :diff_hour_sal, :last_rate)
    end
end
