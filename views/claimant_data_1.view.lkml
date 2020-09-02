view: claimant_data_1 {
  sql_table_name: `Test_Data_1.claimant_data_1`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: disability_ {
    type: yesno
    sql: ${TABLE}.disability_ ;;
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

  dimension: drivers_license {
    type: string
    sql: ${TABLE}.drivers_license ;;
  }

  dimension: education_level {
    type: string
    sql: ${TABLE}.education_level ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employer_provide_form_ {
    type: yesno
    sql: ${TABLE}.employer_provide_form_ ;;
  }

  dimension: fed_work_last_18months_ {
    type: yesno
    sql: ${TABLE}.fed_work_last_18months_ ;;
  }

  dimension: filed_last_12months_ {
    type: yesno
    sql: ${TABLE}.filed_last_12months_ ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: id_state {
    type: string
    sql: ${TABLE}.id_state ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: military_last_18months_ {
    type: yesno
    sql: ${TABLE}.military_last_18months_ ;;
  }

  dimension: name_match_ssn {
    type: yesno
    sql: ${TABLE}.name_match_ssn ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_type {
    type: string
    sql: ${TABLE}.phone_type ;;
  }

  dimension: preferred_lan_spoken {
    type: string
    sql: ${TABLE}.preferred_lan_spoken ;;
  }

  dimension: preferred_lan_written {
    type: string
    sql: ${TABLE}.preferred_lan_written ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.race ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_id_ {
    type: yesno
    sql: ${TABLE}.state_id_ ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: ui_app_other_state_ {
    type: yesno
    sql: ${TABLE}.UI_app_other_state_ ;;
  }

  dimension: us_citizen {
    type: yesno
    sql: ${TABLE}.US_citizen ;;
  }

  dimension: veteran_ {
    type: yesno
    sql: ${TABLE}.veteran_ ;;
  }

  dimension: work_in_other_state_ {
    type: yesno
    sql: ${TABLE}.work_in_other_state_ ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
