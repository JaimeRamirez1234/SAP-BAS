@AbapCatalog.sqlViewName: 'ZV_CLNTS_A223'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CLIENTES LIBROS'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_CLNTS_LIB_A223 as select from ztb_clnts_lib_a2
{
    key id_libro as IdLibro,
    count(distinct id_cliente) as Ventas
}
group by id_libro
