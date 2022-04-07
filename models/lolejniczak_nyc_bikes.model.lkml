connection: "bigquery-argolis-nycbikes"

# include all the views
include: "/views/**/*.view"

datagroup: lolejniczak_nyc_bikes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lolejniczak_nyc_bikes_default_datagroup

explore: citibike_trips {}

explore: citibike_stations {}
