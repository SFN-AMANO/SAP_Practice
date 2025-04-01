CLASS zbp_test_of_test_07 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_07 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA airport_from_id TYPE /DMO/airport_from_id.

    SELECT SINGLE
    FROM /dmo/connection
    FIELDS airport_from_id
    WHERE carrier_id = 'LH'
    AND connection_id = '0400'
    INTO @airport_from_id.

    out->write( airport_from_id ).
    out->write( sy-subrc ).


    DATA lt_result TYPE TABLE OF ZCDS_MY_VIEW_01.

    SELECT
    FROM ZCDS_MY_VIEW_01
    FIELDS *
    INTO TABLE @lt_result.

    LOOP AT lt_result INTO DATA(ls_result).
      out->write( ls_result ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
