@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'flight root view'
define root view entity zddl_rview_flight as select from zgw_flight as a
{
  key a.carrier_id as carrier_id,
  key a.connection_id as connect_id,
  key a.flight_date as flight_date,
  @Semantics.amount.currencyCode : 'currency_code'
  a.price,
  a.currency_code,
  a.plane_type_id,
  a.seats_max,
  a.seats_occupied,
  @Semantics.user.createdBy: true
  a.created_by,
  @Semantics.systemDateTime.createdAt: true
  a.created_at,
  @Semantics.user.localInstanceLastChangedBy: true
  a.last_changed_by,
  @Semantics.systemDateTime.lastChangedAt: true
  a.last_changed_at,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  a.locl_last_changed_at
}
