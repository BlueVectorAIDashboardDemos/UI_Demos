connection: "bq-connector"

# include all the views
include: "/views/**/*.view"

datagroup: ohio_ui_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ohio_ui_default_datagroup

explore: claimant_data_1 {}

explore: claimant_data_2 {}
