@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_GW_TRAVEL'
@ObjectModel.semanticKey: [ 'TravelID' ]
define root view entity ZC_GW_TRAVEL
  provider contract transactional_query
  as projection on ZR_GW_TRAVEL
{
  key TravelID,
  AgencyID,
  CustomerID,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  CurrencyCode,
  Description,
  Status,
  LoclLastChangedAt
  
}
