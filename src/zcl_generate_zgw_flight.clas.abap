CLASS zcl_generate_zgw_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_zgw_flight IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM zgw_flight.
    DATA:lt_flight TYPE TABLE of zgw_flight.
    SELECT from /dmo/flight
           FIELDS *
           INTO CORRESPONDING FIELDS OF TABLE @lt_flight.
    LOOP AT lt_flight ASSIGNING FIELD-SYMBOL(<fs>).
        get TIME STAMP FIELD <fs>-created_at.
        <fs>-created_by = 'JamesG'.
    ENDLOOP.
    MODIFY zgw_flight FROM TABLE @lt_flight[].
    IF sy-subrc = 0.
      COMMIT WORK.
      out->write( 'Data insertion successful' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
