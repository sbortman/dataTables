package dataTables

class BootStrap {
  CsvLoaderService csvLoaderService

  def init = { servletContext ->
    if ( !City.count() ) {
      csvLoaderService.loadCsvFile( 'data/cities.csv' as File )
    }
  }

  def destroy = {
  }
}