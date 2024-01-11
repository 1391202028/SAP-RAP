
CLASS zcl_call_rest DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_call_rest IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( sy-uname ).
  ENDMETHOD.

ENDCLASS.
