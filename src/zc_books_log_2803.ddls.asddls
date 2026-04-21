@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Books'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
serviceQuality: #B,
sizeCategory: #S,
dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_BOOKS_LOG_2803
  as select from    ztb_libros_2803         as Books
    inner join      ztb_catego_2803         as Categ on Books.bi_categ = Categ.bi_categ
    left outer join ZC_CLINTS_LIBS_LOG_2803 as Sales on Books.id_libro = Sales.IDLibro
  association [0..*] to ZC_CLIENTS_LOG_0803 as _Clients on $projection.BookID = _Clients.BookID
{

  key Books.id_libro  as BookID,
  key Books.bi_categ  as BiCateg,
      Books.titulo    as Tittle,
      Books.autor     as Author,
      Books.editorial as Editorial,
      Books.idioma    as language,
      Books.paginas   as PagesNumber,
      @Semantics.amount.currencyCode: 'currency'
      Books.precio    as Price,
      Books.moneda    as currency,
      case
      when Sales.ventas < 1 then 0
      when Sales.ventas = 1 then 1
      when Sales.ventas = 2 then 2
      when Sales.ventas > 2 then 3
      else 0
      end             as Sales,
      Categ.descripcion as Description,
      Books.formato   as BookFormat,
      Books.url       as Images,
      _Clients
}
