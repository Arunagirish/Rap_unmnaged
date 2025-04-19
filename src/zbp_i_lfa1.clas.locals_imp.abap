CLASS lhc_ZI_lfa1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR ZI_lfa1 RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_lfa1 RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE ZI_lfa1.

*    METHODS earlynumbering_create FOR NUMBERING
*      IMPORTING entities FOR CREATE ZI_lfa1.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ZI_lfa1.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ZI_lfa1.

    METHODS read FOR READ
      IMPORTING keys FOR READ ZI_lfa1 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK ZI_lfa1.

    METHODS rba_Lfb1 FOR READ
      IMPORTING keys_rba FOR READ ZI_lfa1\_Lfb1 FULL result_requested RESULT result LINK association_links.

    METHODS cba_Lfb1 FOR MODIFY
      IMPORTING entities_cba FOR CREATE ZI_lfa1\_Lfb1.
    METHODS save_finalize FOR MODIFY
      IMPORTING keys FOR ACTION ZI_lfa1~save_finalize.
    METHODS modify_determination FOR DETERMINE ON MODIFY
      IMPORTING keys FOR ZI_lfa1~modify_determination.

    METHODS save_determination FOR DETERMINE ON SAVE
      IMPORTING keys FOR ZI_lfa1~save_determination.
*
*    METHODS earlynumbering_cba_Lfb1 FOR NUMBERING
*      IMPORTING entities FOR CREATE ZI_lfa1\_Lfb1.

ENDCLASS.

CLASS lhc_ZI_lfa1 IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.
*
*  METHOD earlynumbering_create.
*  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
    DATA(key) = keys[ 1 ]-lifnr.
    SELECT * FROM zlfa1  WHERE lifnr = @key INTO @DATA(wa_result).
    ENDSELECT.
    APPEND VALUE #( %is_draft = '01'
  lifnr    = wa_result-lifnr
  land1 = wa_result-land1
  name1  = wa_result-name1
   changed_on = wa_result-changed_on ) TO result.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Lfb1.
  ENDMETHOD.

  METHOD cba_Lfb1.
  ENDMETHOD.

*  METHOD earlynumbering_cba_Lfb1.
*  ENDMETHOD.

  METHOD save_finalize.
  ENDMETHOD.

  METHOD modify_determination.
  ENDMETHOD.

  METHOD save_determination.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_lfb1 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ZI_lfb1.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ZI_lfb1.

    METHODS read FOR READ
      IMPORTING keys FOR READ ZI_lfb1 RESULT result.

    METHODS rba_Lfa1 FOR READ
      IMPORTING keys_rba FOR READ ZI_lfb1\_Lfa1 FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_ZI_lfb1 IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Lfa1.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_LFA1 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_LFA1 IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
