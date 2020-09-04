view: claim_amounts {
  sql_table_name: `california-ui-solution-demo.Test_Data_1.Claim_Amounts`
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

  dimension: requested_funds {
    type: number
    sql: ${TABLE}.requested_funds ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
