CLASS zbp_test_of_test_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zbp_test_of_test_01 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "型宣言
    TYPES: BEGIN OF type_ls_person,
            name TYPE string,
            age TYPE i,
            city TYPE string,
          END OF type_ls_person.

    "変数宣言
    DATA: ls_person TYPE type_ls_person.
    DATA: lt_person TYPE TABLE OF type_ls_person.

    "データの追加
    ls_person-name = 'Taro'.
    ls_person-age = '30'.
    ls_person-city = 'Tokyo'.
    APPEND ls_person TO lt_person.

    ls_person-name = 'Hanako'.
    ls_person-age = '25'.
    ls_person-city = 'Osaka'.
    APPEND ls_person TO lt_person.

    "ループ処理
    LOOP AT lt_person INTO ls_person.
      out->write( |Name: { ls_person-name } / age: { ls_person-age } / city: { ls_person-name }| ).
    ENDLOOP.


  ENDMETHOD.
ENDCLASS.
