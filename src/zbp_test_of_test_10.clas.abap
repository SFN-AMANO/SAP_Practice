CLASS zbp_test_of_test_10 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_10 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA agencies_upd TYPE TABLE FOR UPDATE /dmo/i_agencytp.

    agencies_upd = VALUE #( ( agencyid = '0700##' name = 'Some fancy new game' ) ).

    MODIFY ENTITIES OF /dmo/i_agencytp
      ENTITY /dmo/agency
      UPDATE FIELDS ( name )
      WITH agencies_upd.

    out->write( |writing by 'agencies_upd'| ).
    out->write( agencies_upd ).

    COMMIT ENTITIES.

  ENDMETHOD.
ENDCLASS.
