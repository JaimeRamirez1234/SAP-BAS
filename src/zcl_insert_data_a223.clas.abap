CLASS zcl_insert_data_a223 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
        INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_a223 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


        DATA: lt_acc_categ TYPE TABLE OF ztb_acc_categ_a2,
              lt_catego TYPE TABLE OF ztb_catego_a223,
              lt_clientes TYPE TABLE OF ztb_clientes_a23,
              lt_clnts_lib TYPE TABLE OF ztb_clnts_lib_a2,
              lt_libros TYPE TABLE OF ztb_libros_a223.
*------------------------------------------------------------------------------------------------------------
        lt_acc_categ = VALUE #( ( bi_categ ='A' tipo_acceso ='1' )
                                ( bi_categ ='B' tipo_acceso ='1' )
                                ( bi_categ ='C' tipo_acceso ='2' ) ).

        DELETE FROM ztb_acc_categ_a2.
        INSERT ztb_acc_categ_a2 FROM TABLE @lt_acc_categ.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_acc_categ_a2' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_catego = VALUE #( ( bi_categ ='A' descripcion ='Novela' )
                             ( bi_categ ='B' descripcion ='Horror' )
                             ( bi_categ ='C' descripcion ='Romance' ) ).
        DELETE FROM ztb_catego_a223.
        INSERT ztb_catego_a223 FROM TABLE @lt_catego.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_catego_a223' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_clientes = VALUE #( ( id_cliente = '01' tipo_acceso = '1' nombre = 'Pancho' apellidos = 'Pistolas' email = 'asd@qwe.com' url = 'https://www.autobild.es/sites/autobild.es' )
                               ( id_cliente = '02' tipo_acceso = '2' nombre = 'Pepe' apellidos = 'Grillo' email = 'asd123@asd123.com' url = 'https://s.aolcdn.com/commerce/autodata/images/USC80JES162A021001.jpg' )
                               ( id_cliente = '03' tipo_acceso = '1' nombre = 'Iram' apellidos = 'Marquez' email = 'aseqwe12@Email.com' url = 'https://www.seat.mx/content/countries/mx/seat-website' ) ).
        DELETE FROM ztb_clientes_a23.
        INSERT ztb_clientes_a23 FROM TABLE @lt_clientes.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_clientes_a23' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_clnts_lib = VALUE #( ( id_cliente = '01' id_libro = '0001' )
                                ( id_cliente = '02' id_libro = '0002' )
                                ( id_cliente = '03' id_libro = '0003' ) ).
        DELETE FROM ztb_clnts_lib_a2.
        INSERT ztb_clnts_lib_a2 FROM TABLE @lt_clnts_lib.
        if sy-subrc eq 0.
            out->write( 'Insert ztb_clnts_lib_a2' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------
        lt_libros = VALUE #( ( id_libro = '0001' bi_categ = 'A' titulo = 'El raton vaquero' autor = 'Blasour' editorial = 'Tha world' idioma = 'English' paginas = '1300' precio = '450' moneda = 'EUR' formato = 'Digital' url =
'https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Aston_Martin-DB9_2013_01.jpg?itok=bGlXq8UF' )
                             ( id_libro = '0002' bi_categ = 'B' titulo = 'Coraline' autor = 'Ivanovich' editorial = 'Plank' idioma = 'Spanish' paginas = '556' precio = '800' moneda = 'USD' formato = 'Digital' url =
'https://s.aolcdn.com/commerce/autodata/images/USC80JES162A021001.jpg' )
                             ( id_libro = '0003' bi_categ = 'C' titulo = 'Fallot' autor = 'Frenchi' editorial = 'El clarin' idioma = 'Japanese' paginas = '982' precio = '900' moneda = 'MXN' formato = 'Digital' url =
'https://www.seat.mx/content/countries/mx/seat-website/es/modelos/ibiza/_jcr_content.resizedViewPort.noscale.rangeMiniature.png' ) ).
        DELETE FROM ztb_libros_a223.
        INSERT ztb_libros_a223 FROM TABLE @lt_libros.

        if sy-subrc eq 0.
            out->write( 'Insert ztb_libros_a223' ).
        ENDIF.
*------------------------------------------------------------------------------------------------------------
*------------------------------------------------------------------------------------------------------------



  ENDMETHOD.
ENDCLASS.
