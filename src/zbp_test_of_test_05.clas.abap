CLASS zbp_test_of_test_05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_05 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection1 TYPE REF TO lcl_connection.
    connection1 = new #( carrier_id = 'LH' connection_id = '0400' ).
    out->write( connection1 ).

    DATA(connection2) = new lcl_connection( carrier_id = 'LH2' connection_id = '0401' ).
    connection2->set_attributes( connection_id = '0403' ).
    out->write( connection2 ).


    out->write( |finish!!!| ).
  ENDMETHOD.
ENDCLASS.
