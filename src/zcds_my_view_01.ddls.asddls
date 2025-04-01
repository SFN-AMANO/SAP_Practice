@AbapCatalog.sqlViewName: 'ZCDSMYVIEW01'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'testes'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_MY_VIEW_01 as select from /dmo/connection
{
  key carrier_id,
  key connection_id,
  airport_from_id
}
