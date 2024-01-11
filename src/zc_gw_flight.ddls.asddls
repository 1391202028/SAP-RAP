@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_GW_FLIGHT'
@ObjectModel.semanticKey: [ 'CarrierID', 'ConnectionID', 'FlightDate' ]
define root view entity ZC_GW_FLIGHT
  provider contract transactional_query
  as projection on ZR_GW_FLIGHT
{
  key CarrierID,
  key ConnectionID,
  key FlightDate,
  Price,
  CurrencyCode,
  PlaneTypeID,
  SeatsMax,
  SeatsOccupied,
  LoclLastChangedAt
  
}
