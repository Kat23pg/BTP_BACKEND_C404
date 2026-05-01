@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Supplement - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZBKSPPL_I_2803 as projection on ZBKSPPL_R_2803
{
    key BooksupplUuid,
    TravelUUID,
    BookingUUID,
    BookingSupplementID,
    SupplementID,
     @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    /* Associations */
    _Booking: redirected to parent ZBOOKING_I_2803,
    _Product,
    _SupplementText,
    _Travel: redirected to ZTRAVEL_I_2803
}
