# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_27_083824) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "emp_id"
    t.string "name"
    t.date "birth"
    t.integer "age"
    t.string "judgment"
    t.string "department"
    t.string "task"
    t.string "residence"
    t.integer "fam_spouse"
    t.integer "fam_except_spouse"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch"
  end

  create_table "etc_std_vals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "praise_val"
    t.float "mon_avg_worktime"
    t.float "mon_short_worktime"
    t.integer "holiday_val"
    t.integer "std_salary_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_std_vals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "eval_name"
    t.integer "eval_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "emp_id"
    t.integer "age_ad", default: 0
    t.integer "isms", default: 0
    t.integer "health", default: 0
    t.integer "small_group", default: 0
    t.integer "eval_mgm", default: 0
    t.integer "eval_tec", default: 0
    t.integer "adjustment", default: 0
    t.boolean "is_short_work", default: false
    t.integer "overtime", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_std_vals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "position_name"
    t.integer "ability_val"
    t.integer "max_overtime"
    t.integer "pos_val"
    t.integer "pos_inc_val"
    t.integer "pos_std_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residence_std_vals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "residence_name"
    t.integer "residence_spt_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "emp_id"
    t.integer "standard_sal"
    t.integer "ability_sal"
    t.integer "position_sal"
    t.integer "task_sal"
    t.integer "praise_sal"
    t.integer "residence_spt_sal"
    t.integer "basic_sal"
    t.integer "hour_sal"
    t.integer "over_hour_sal"
    t.integer "over_sal"
    t.integer "fam_sal"
    t.integer "total_sal"
    t.integer "last_total_sal"
    t.integer "diff_total_sal"
    t.float "rate"
    t.integer "last_hour_sal"
    t.integer "diff_hour_sal"
    t.float "last_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_std_vals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "task_name"
    t.integer "task_val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
