CLASS zcl_order_handler DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    METHODS:
      insert_order,
      update_order,
      select_orders,
      check_subrc.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: mo_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.

CLASS zcl_order_handler IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    mo_out = out.
    mo_out->write( 'Main Method Start' ).
    mo_out->write( 'INSERT Start' ).
    insert_order(  ).
    mo_out->write( 'INSERT End' ).
    mo_out->write( 'UPDATE Start' ).
    update_order(  ).
    mo_out->write( 'UPDATE  End' ).
    mo_out->write( 'SELECT Start' ).
    select_orders(  ).
    mo_out->write( 'SELECT End' ).
    mo_out->write( 'Main Method End' ).
  ENDMETHOD.

  METHOD insert_order.

    DATA :lv_client TYPE sy-mandt,
          ls_order TYPE zorderhdr.

    "データ格納
    lv_client = sy-mandt.
    ls_order-client = lv_client.
    ls_order-order_id = 'ORD001'.
    ls_order-customer_id = 'CUST01'.
    ls_order-cuky_field = 'JPY'.
    ls_order-total_amount = '1234.56'.

    INSERT zorderhdr FROM @ls_order.
    check_subrc(  ).


  ENDMETHOD.

  METHOD update_order.

    DATA: lv_client TYPE sy-mandt,
          ls_order TYPE zorderhdr.

    "データ格納
    lv_client = sy-mandt.
    ls_order-client = lv_client.
    ls_order-order_id = 'ORD003'.
    ls_order-customer_id = 'CUST99'.
    ls_order-total_amount = '2345.67'.

    UPDATE zorderhdr FROM @ls_order.
    check_subrc(  ).

  ENDMETHOD.

  METHOD select_orders.

    DATA: lt_orders TYPE TABLE OF zorderhdr,
          ls_order TYPE zorderhdr.

    "データ取得
    SELECT * FROM zorderhdr INTO TABLE @lt_orders.
    check_subrc(  ).
    mo_out->write( |displaying 'lt_orders'| ).
    mo_out->write( lt_orders ).

  ENDMETHOD.

  METHOD check_subrc.
    mo_out->write( |sy-subrc is { sy-subrc }| ).
  ENDMETHOD.

ENDCLASS.
