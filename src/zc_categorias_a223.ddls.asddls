@AbapCatalog.sqlViewName: 'ZV_CATEGO_A223'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CATEGORIAS'
@Metadata.ignorePropagatedAnnotations: true
define view ZC_CATEGORIAS_A223 as select from ztb_catego_a223
{
    key bi_categ as BiCateg,
        descripcion as Descripcion
}
