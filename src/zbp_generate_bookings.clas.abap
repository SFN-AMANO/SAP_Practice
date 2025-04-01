CLASS zbp_generate_bookings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES IF_OO_ADT_CLASSRUN.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zbp_generate_bookings IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA:it_bookings TYPE TABLE OF ztbooking.

*   read current timestamp
    GET TIME STAMP FIELD DATA(zv_tsl).

*   fill internal table (itab)
    it_bookings = VALUE #(
        ( booking = '1' customername = 'Buchholm' )
        ( booking = '2' customername = 'Jeremias' )
    ).

*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ztbooking.

*   insert the new table entries
    INSERT ztbooking FROM TABLE @it_bookings.
    out->write( 'data inserted successfully!' ).

*   check the result
    SELECT * FROM ztbooking INTO TABLE @it_bookings.
    out->write( 'sy-dbcnt' ).
    out->write( it_bookings ).



  ENDMETHOD.

ENDCLASS.
