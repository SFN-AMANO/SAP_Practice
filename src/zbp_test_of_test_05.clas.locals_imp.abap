*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.

    DATA carrier_id TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.
    CLASS-DATA conn_counter TYPE i.

    METHODS constructor
      IMPORTING
        carrier_id TYPE /dmo/carrier_id OPTIONAL
        connection_id TYPE /dmo/connection_id.

    METHODS set_attributes
      IMPORTING
        carrier_id TYPE /dmo/carrier_id OPTIONAL
        connection_id TYPE /dmo/connection_id.

    METHODS get_attributes
      EXPORTING
        e_carrier_id TYPE /dmo/carrier_id
        e_connection_id TYPE /dmo/connection_id.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.
  METHOD set_attributes.
    me->carrier_id = carrier_id.
    me->connection_id = connection_id.
  ENDMETHOD.

  METHOD get_attributes.
    e_carrier_id = carrier_id.
    e_connection_id = connection_id.
  ENDMETHOD.

  METHOD constructor.
    me->carrier_id = carrier_id.
    me->connection_id = connection_id.
    conn_counter = conn_counter + 1.
  ENDMETHOD.

ENDCLASS.
