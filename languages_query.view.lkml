view: languages_query {
  derived_table: {
    sql: SELECT
        claimant_data_1.preferred_lan_spoken  AS claimant_data_1_preferred_lan_spoken
      FROM `Test_Data_1.claimant_data_1`
           AS claimant_data_1

      ORDER BY 1
      LIMIT 1001
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: claimant_data_1_preferred_lan_spoken {
    type: string
    sql: ${TABLE}.claimant_data_1_preferred_lan_spoken ;;
  }

  set: detail {
    fields: [claimant_data_1_preferred_lan_spoken]
  }
}
