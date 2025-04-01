CLASS zbp_test_of_test_09 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_09 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA input_keys TYPE TABLE FOR READ IMPORT /DMO/I_AgencyTP.
    DATA result_tab TYPE TABLE FOR READ RESULT /DMO/I_AgencyTP.

    input_keys = VALUE #( ( agencyID = '070050' ) ).

    READ ENTITIES OF /DMO/I_AgencyTP
      ENTITY /DMO/Agency
      ALL FIELDS
      WITH input_keys
      RESULT result_tab.

    out->write( result_tab ).
    out->write( 'finish!' ).

  ENDMETHOD.
ENDCLASS.
