@AbapCatalog.sqlViewName: 'YTB_DEMO_HIER_S'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@EndUserText.label: 'CDS_DEMO10_HIERARCHY_SOURCE'
define view YCDS_DEMO10_HIERARCHY_SOURCE
as select from ytb_demo_hier
association[1..1] to YCDS_DEMO10_HIERARCHY_SOURCE as _tree 
    on $projection.parent= _tree.id
{
  _tree,
  key id,
  pid as parent,
  name
}
