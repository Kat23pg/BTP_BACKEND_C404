@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clients Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
serviceQuality: #B,
sizeCategory: #S,
dataClass: #MIXED
}
define view entity ZC_CLINTS_LIBS_LOG_2803
  as select from ztb_clnts_lib_03
{
  key id_libro                     as IDLibro,
      count( distinct id_cliente ) as ventas
}
group by
 id_libro;
