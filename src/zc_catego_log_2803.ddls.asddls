@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categories'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_CATEGO_LOG_2803 as select from ztb_catego_2803
{
    key bi_categ as Category,
    descripcion as Description
}
