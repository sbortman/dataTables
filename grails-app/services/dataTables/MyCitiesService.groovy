package dataTables

import grails.compiler.GrailsCompileStatic
import grails.gorm.DetachedCriteria
import grails.web.servlet.mvc.GrailsParameterMap
import groovy.transform.CompileStatic

//@GrailsCompileStatic
//@CompileStatic
class MyCitiesService {
  CityService cityService

  Map<String, Object> doSomething( GrailsParameterMap params ) {
    def recordsTotal = cityService.count()
//    def recordsFiltered = recordsTotal

    def sortColumnIndex = params.int( 'order[0][column]' )
    def sortColumnName = params[ "columns[${ sortColumnIndex }][data]" ]
    def sortColumnOrder = params[ 'order[0][dir]' ]

//    def cities = cityService.list(
//        max: params.int( 'length' ),
//        offset: params.int( 'start' ),
//        sort: sortColumnName,
//        order: sortColumnOrder
//    )

    def name = params[ 'name' ]
    def country = params[ 'country' ]
    def population = params.int( 'population' )
    def capital = params.boolean( 'capital' )

    def cities = City.createCriteria().list(
        max: params.int( 'length' ),
        offset: params.int( 'start' ),
        sort: sortColumnName,
        order: sortColumnOrder
    ) {
      if ( params[ 'capital' ] && capital ) {
        eq( 'capital', capital )
      }
      if ( params[ 'country' ] ) {
        eq( 'country', country )
      }
      if ( params[ 'name' ] ) {
        eq( 'name', name )
      }
    }

    Map<String, Object> results = [
        draw           : params.int( 'draw' ),
        recordsTotal   : cityService.count(),
        recordsFiltered: cities?.totalCount,
        data           : cities
    ]

    results
  }
}