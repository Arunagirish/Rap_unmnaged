@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumptional view for lfa1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_lfa1
  provider contract transactional_query as projection on ZI_lfa1
{
    key Lifnr,
    Land1,
    Name1,
    Changed_on,
    /* Associations */

    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_CALCULATE'
//    @ObjectModel.filter: 'zcl_filter'
    virtual calculate : abap.int2,
 
      _lfb1 :redirected to composition child ZC_LFB1
}
