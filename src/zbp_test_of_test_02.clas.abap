CLASS zbp_test_of_test_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA var_i TYPE i.
    DATA var_p TYPE p LENGTH 10 DECIMALS 2 VALUE '12345678.11'.
    CONSTANTS const_01 TYPE C LENGTH 8 VALUE '12345678'.

    out->write( | { var_i } { var_p } test { const_01 }| ).

    DATA date_01 TYPE d VALUE '19940616'.

    IF var_p > const_01.
      out->write( |var_p wins : { var_p }| ).
    ELSEIF var_p < const_01.
      out->write( |const_01 wins : { const_01 }| ).
    ELSE.
      out->write( 'draw' ).
    ENDIF.

    TRY.
      out->write( |{ date_01 - const_01 }| ).
    CATCH cx_root.
      out->write( 'An error is caught.' ).
    ENDTRY.

    TRY.
      cl_abap_unit_assert=>assert_equals( act = date_01 exp = const_01 msg = '値が不一致' ).
    CATCH cx_root.
      out->write( 'An error is caught.' ).
    ENDTRY.


  ENDMETHOD.
ENDCLASS.
