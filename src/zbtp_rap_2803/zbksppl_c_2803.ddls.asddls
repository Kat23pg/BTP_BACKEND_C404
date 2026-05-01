@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement - Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZBKSPPL_C_2803 as projection on ZBKSPPL_R_2803
{
    key BooksupplUuid,
    TravelUUID,
    BookingUUID,
    BookingSupplementID,
    SupplementID,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    LocalLastChangedAt,
    /* Associations */
    _Booking : redirected to parent ZBOOKING_C_2803,
    _Product,
    _SupplementText,
    _Travel : redirected to ZTRAVEL_C_2803
}
