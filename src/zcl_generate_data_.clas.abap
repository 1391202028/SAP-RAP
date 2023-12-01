CLASS zcl_generate_data_ DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_data_ IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM zgw_travel.
    INSERT ('ZGW_TRAVEL')  FROM (
    SELECT
      FROM /dmo/travel AS travel
      FIELDS
        travel~travel_id        AS travel_id,
        travel~agency_id        AS agency_id,
        travel~customer_id      AS customer_id,
        travel~begin_date       AS begin_date,
        travel~end_date         AS end_date,
        travel~booking_fee      AS booking_fee,
        travel~total_price      AS total_price,
        travel~currency_code    AS currency_code,
        travel~description      AS description,
        CASE travel~status    "Status [N(New) | P(Planned) | B(Booked) | X(Cancelled)]
          WHEN 'N' THEN 'O'
          WHEN 'P' THEN 'O'
          WHEN 'B' THEN 'A'
          ELSE 'X'
        END                     AS overall_status,  "Travel Status [A(Accepted) | O(Open) | X(Cancelled)]
        travel~createdby        AS created_by,
        travel~createdat        AS created_at,
        travel~lastchangedby    AS last_changed_by,
        travel~lastchangedat    AS last_changed_at
        ORDER BY travel_id UP TO 100 ROWS ).
    IF sy-subrc = 0.
      COMMIT WORK.
      out->write( 'Data insertion successful' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
