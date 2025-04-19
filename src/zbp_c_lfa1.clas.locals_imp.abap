CLASS lhc_ZC_lfa1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS augment_create FOR MODIFY
      IMPORTING entities FOR CREATE ZC_lfa1.

    METHODS augment_update FOR MODIFY
      IMPORTING entities FOR UPDATE ZC_lfa1.

ENDCLASS.

CLASS lhc_ZC_lfa1 IMPLEMENTATION.

  METHOD augment_create.
  ENDMETHOD.

  METHOD augment_update.
  ENDMETHOD.

ENDCLASS.
