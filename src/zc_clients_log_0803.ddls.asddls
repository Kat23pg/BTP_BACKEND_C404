@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clients'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
serviceQuality: #B,
sizeCategory: #S,
dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_CLIENTS_LOG_0803 
as select from ztb_clientes_03 as Clients
inner join ztb_clnts_lib_03 as RelCliLib 
on RelCliLib.id_cliente = Clients.id_cliente
{
    key RelCliLib.id_libro as BookID,
    key Clients.id_cliente as ClientID,
    key Clients.tipo_acceso as AccessType,
    Clients.nombre as Name,
    Clients.apellidos as LastName,
    Clients.email as Email,
    Clients.url as Images
}
