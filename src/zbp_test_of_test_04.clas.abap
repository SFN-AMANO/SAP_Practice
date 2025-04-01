CLASS zbp_test_of_test_04 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_04 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA connection1 TYPE REF TO lcl_connection.
    connection1 = new #( ).
    connection1->carrier_id = 'LH'.
    connection1->connection_id = '0400'.
    out->write( connection1 ).

    DATA(connection2) = new lcl_connection( ).
    connection2->set_attributes(
        EXPORTING
          carrier_id = 'LH2'
          connection_id = '0401' ).
    out->write( connection2 ).


    out->write( |finish!!!| ).
  ENDMETHOD.
ENDCLASS.
