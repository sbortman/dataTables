package dataTables

import grails.gorm.transactions.Transactional
import groovy.transform.CompileStatic
import groovy.util.logging.Slf4j
import org.springframework.context.MessageSource

@Transactional
@CompileStatic
@Slf4j
class CsvLoaderService {
  MessageSource messageSource

  def loadCsvFile( File csvFile ) {
    csvFile?.eachLine { String line ->
      List<String> fields = line?.split( ',' ) as List<String>

      City city = new City(
          name: fields[ 0 ],
          country: fields[ 1 ],
          population: fields[ 2 ]?.toInteger(),
          capital: fields[ 3 ] == 'Y',
          longitude: fields[ 4 ]?.toDouble(),
          latitude: fields[ 5 ]?.toDouble()
      )

      if ( !city?.save() ) {
        city?.errors?.allErrors?.each {
          log.error( messageSource.getMessage( it, Locale.default ) )
        }
      }
    }
  }
}