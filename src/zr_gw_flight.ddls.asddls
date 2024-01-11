@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZGW_FLIGHT'
define root view entity ZR_GW_FLIGHT
  as select from zgw_flight
{
  key carrier_id as CarrierID,
  key connection_id as ConnectionID,
  key flight_date as FlightDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  price as Price,
  currency_code as CurrencyCode,
  plane_type_id as PlaneTypeID,
  seats_max as SeatsMax,
  seats_occupied as SeatsOccupied,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locl_last_changed_at as LoclLastChangedAt
  
}
