package dataTables

import grails.compiler.GrailsCompileStatic
import grails.converters.JSON
import grails.web.mapping.LinkGenerator
import groovy.util.logging.Slf4j

@Slf4j
@GrailsCompileStatic
class MyCitiesController {
  LinkGenerator grailsLinkGenerator;
  MyCitiesService myCitiesService

  def getData() {
    log.info( "request:  ${ params }" )

    Map<String, Object> results = myCitiesService.doSomething( params )

    render contentType: 'application/java', text: ( results as JSON )
  }

  def getDetailedData() {
    [ city: City.get( params.long( 'id' ) ) ]
  }

  def index() {
    def tableParams = [
        searching  : false,
        processing : true,
        serverSide : true,
        deferRender: true,
        ajax       : [
            url: grailsLinkGenerator?.link( action: 'getData' ),
        ],
        columnDefs : [
            [ searchable: false, orderable: false, targets: 0 ]
        ],
        order      : [ [ 1, 'asc' ] ],
        columns    : [
            [ data: 'id', title: '' ],
            [ data: 'name', title: 'Name' ],
            [ data: 'country', title: 'Country' ],
            [ data: 'population', title: 'Population' ],
            [ data: 'capital', title: 'Capital' ],
            [ data: 'longitude', title: 'Longitude' ],
            [ data: 'latitude', title: 'Latitude' ]
        ]
    ]

    [ tableParams: tableParams ]
  }
}