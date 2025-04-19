@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'basic interface view for lfa1'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_lfa1 as select from zlfa1
composition [0..*] of ZI_lfb1 as _lfb1
{
    key lifnr as Lifnr,
    land1 as Land1,
    name1 as Name1,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    changed_on as Changed_on,
//    @Semantics.user.createdBy: true
//    created_on as Created_on,
    _lfb1
}
