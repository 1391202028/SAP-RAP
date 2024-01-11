CLASS zcl_test_gw001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_gw001 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
  DATA:lt_demo TYPE TABLE of ytb_demo_hier.
    lt_demo[] = VALUE #( ( id = '1' pid = '0' name = '图书' )
                         ( id = '2' pid = '1' name = '教材类' )
                         ( id = '3' pid = '1' name = '计算机类' )
                         ( id = '4' pid = '3' name = 'JAVA' )
                         ( id = '5' pid = '3' name = '.NET' )
                         ( id = '6' pid = '3' name = 'SAP' )
                         ( id = '7' pid = '1' name = '文学类' )
                         ( id = '8' pid = '1' name = '科幻类' )
                         ( id = '9' pid = '8' name = '三体' )
                         ( id = '10' pid = '8' name = '流浪地球' ) ).
     MODIFY ytb_demo_hier FROM TABLE @lt_demo[].
   ENDMETHOD.

ENDCLASS.
