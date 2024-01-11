define hierarchy YCDS_DEMO10_HIERARCHY
  with parameters
    p_id : abap.int4
  as parent child hierarchy (
    source 
        YCDS_DEMO10_HIERARCHY_SOURCE      --两者都可以
        --YCDS_DEMO10_HIERARCHY_VIEW          --两者都可以
    child to parent association _tree
    start where 
        id = :p_id
    siblings order by 
        id ascending
)
{
    id, 
    parent, 
    name 
}
