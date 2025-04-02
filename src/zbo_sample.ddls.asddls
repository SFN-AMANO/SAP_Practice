@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'サンプル ビジネスオブジェクト（注文情報）byCopilot'
@Metadata.ignorePropagatedAnnotations: false
define root view entity ZBO_SAMPLE as select from zorderhdr
{
  key order_id as OrderId,
  customer_id as CustomerID,
  order_date as OrderDate,
  cuky_field as cukyField,
  total_amount as TotalAmount
}
