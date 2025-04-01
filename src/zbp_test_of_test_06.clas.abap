CLASS zbp_test_of_test_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_06 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA airport_from_id TYPE /DMO/airport_from_id.

    SELECT SINGLE
    FROM /dmo/connection
    FIELDS airport_from_id
    INTO @airport_from_id.


  ENDMETHOD.
ENDCLASS.
