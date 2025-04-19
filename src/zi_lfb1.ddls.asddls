@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'basic interface view for lfb1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_lfb1 as select from zlfb1 
association to parent ZI_lfa1 as _lfa1 on $projection.Lifnr = _lfa1.Lifnr
{
    key lifnr as Lifnr,
    key bukrs as Bukrs,
    _lfa1
}
