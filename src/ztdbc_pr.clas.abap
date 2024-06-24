CLASS ztdbc_pr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_mm_pur_s4_pr_check .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZTDBC_PR IMPLEMENTATION.


  METHOD if_mm_pur_s4_pr_check~check.

  IF purchaserequisition-purchasingdocumenttype IS not INITIAL.
    append value #( messagetype = 'W'  messagevariable1 = 'purchasingdocumenttype IS not INITIAL'  ) to messages.
  ENDIF.

  ENDMETHOD.
ENDCLASS.
