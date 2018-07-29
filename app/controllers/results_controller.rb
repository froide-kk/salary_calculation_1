class ResultsController < ApplicationController
before_action :set_result, only: [:show, :edit, :update, :destroy]


#def match(employee)
#    if not employee.emp_id == params[:emp_id]
#        @match = false
#    end
#    @match = true
#end

# GET /results
# GET /results.json

def index
    branch = params[:branch]
    department = params[:department]
    task = params[:task]
    emp_id = params[:emp_id]

    @option_list = params[:option_list]

    search_list = [branch, department, task, emp_id]

    # return value difference... only one where value
    #@results = Employee.connection.select_all("select * from employees right outer join points on employees.emp_id = points.emp_id")

#    sql = "select * from employees right outer join points on employees.emp_id = points.emp_id"
#    sql_where = " where "
#    isALL = true

    #@results = Employee.joins("left outer join point on employees.emp_id = points.emp_id").all
    @results = Employee.all
    #@results = @results.joins(:point).order('employees.emp_id').select('employees.*, points.emp_id as emp_id')

    if !(branch == "ALL")
        @results = @results.where("branch = ?", branch)
#        sql_where << "branch = " + "'" + branch + "', "
#        isALL = false
    end

    if !(department == "ALL")
        @results = @results.where("department = ?", department)
#        sql_where << "department = " + "'" + department + "', "
#        isALL = false
    end

    if !(task == "ALL")
        @results = @results.where("task = ?", task)
#        sql_where << "task = " + "'" + task + "', "
#        isALL = false
    end

    if !(emp_id == "ALL")
        @results = @results.where("emp_id = ?", emp_id)
#        sql_where << "emp_id = " + "'" + emp_id + "', "
#        isALL = false
    end

#    if isALL
#        sql_where.clear
#    else
#        sql_where = sql_where[0...-2]
#    end
#    sql = sql + sql_where
#    @results = Employee.connection.select_all(sql)





#    why??

#    for index in 0 ... search_list.size
#        if !(search_list[index] == "ALL")
#            @results = @results.where("branch = ?", search_list[index])
#        end
#    end

end
    #search option



# GET /results/1
# GET /results/1.json
def show
end

# GET /results/new
def new
    @result = Result.new
end

# GET /results/1/edit
def edit
end

# POST /results
# POST /results.json
def create
    @result = Result.new(result_params)

    respond_to do |format|
    if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
    else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
    end
    end
end

# PATCH/PUT /results/1
# PATCH/PUT /results/1.json
def update
    respond_to do |format|
    if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
    else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
    end
    end
end

# DELETE /results/1
# DELETE /results/1.json
def destroy
    @result.destroy
    respond_to do |format|
    format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
    format.json { head :no_content }
    end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
    @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
    params.fetch(:result, {})
    end
end
