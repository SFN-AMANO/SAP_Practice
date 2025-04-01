CLASS zbp_test_of_test_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zbp_test_of_test_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA num1 TYPE i VALUE 1234.
    DATA numList type table of i.

    APPEND 1234 * 2 TO numlist.
    APPEND 56 TO numlist.
    APPEND 99999 / 2 TO numlist.
    APPEND num1 TO numlist.

    LOOP AT numlist INTO DATA(tempVal).
      out->write( tempVal ).
    ENDLOOP.

    num1 = numlist[ 1 ].
    out->write( |num1 = { num1 }| ).
    out->write( |numlist[ 2 ] = { numlist[ 2 ] }| ).


    """"""""""""""""""""""""""""""""""""""""""""""""
    DATA connection1 TYPE REF TO lcl_connection.

    connection1 = new #( ).

    connection1->carrier_id = 'LH'.
    connection1->connection_id = '0400'.

    out->write( connection1 ).


    out->write( |finish!!!| ).
  ENDMETHOD.
ENDCLASS.
