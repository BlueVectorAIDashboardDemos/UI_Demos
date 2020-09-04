view: verificaiton_data_2 {
  sql_table_name: `california-ui-solution-demo.Test_Data_1.Verificaiton_Data_2`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: awarded_funds {
    type: number
    sql: ${TABLE}.awarded_funds ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension_group: date_applied {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_Applied ;;
  }

  dimension_group: dob {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DOB ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: match_exp_address {
    type: yesno
    sql: ${TABLE}.match_exp_address ;;
  }

  dimension: match_exp_dob {
    type: yesno
    sql: ${TABLE}.match_exp_DOB ;;
  }

  dimension: match_exp_id_no {
    type: yesno
    sql: ${TABLE}.match_exp_id_no ;;
  }

  dimension: match_exp_name {
    type: yesno
    sql: ${TABLE}.match_exp_name ;;
  }

  dimension: match_gender {
    type: yesno
    sql: ${TABLE}.match_gender ;;
  }

  dimension: match_id_address {
    type: yesno
    sql: ${TABLE}.match_id_address ;;
  }

  dimension: match_id_dob {
    type: yesno
    sql: ${TABLE}.match_id_DOB ;;
  }

  dimension: match_id_no {
    type: yesno
    sql: ${TABLE}.match_id_no ;;
  }

  dimension: match_id_state {
    type: yesno
    sql: ${TABLE}.match_id_state ;;
  }

  dimension: match_mailing_address {
    type: yesno
    sql: ${TABLE}.match_mailing_address ;;
  }

  dimension: match_name {
    type: yesno
    sql: ${TABLE}.match_name ;;
  }

  dimension: match_ssn {
    type: yesno
    sql: ${TABLE}.match_ssn ;;
  }

  dimension: match_veteran {
    type: yesno
    sql: ${TABLE}.match_veteran ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: requested_funds {
    type: number
    sql: ${TABLE}.requested_funds ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: us_citizen {
    type: yesno
    sql: ${TABLE}.US_citizen ;;
  }

  dimension: veteran_ {
    type: yesno
    sql: ${TABLE}.veteran_ ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, match_exp_name, match_name]
  }
}
