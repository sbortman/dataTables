package dataTables

import grails.converters.JSON
import grails.validation.Validateable
import groovy.transform.ToString
import groovy.util.logging.Slf4j

@ToString( includeNames = true )
class Column implements Validateable {
  Integer data
  Boolean searchable
  Boolean orderable

  static constraints = {
  }
}

@ToString( includeNames = true )
class DataTablesRequest implements Validateable {
  Integer draw
  Integer start
  Integer length
  List<Map<String, Object>> order
  List<Column> columns

  static constraints = {
  }
}

@Slf4j
class Test3Controller {
  CityService cityService

  /*
  [
    draw:5,
    columns[0][data]:name,
    columns[0][name]:,
    columns[0][searchable]:true,
    columns[0][orderable]:true,
    columns[0][search][value]:,
    columns[0][search][regex]:false,
    columns[1][data]:country,
    columns[1][name]:,
    columns[1][searchable]:true,
    columns[1][orderable]:true,
    columns[1][search][value]:,
    columns[1][search][regex]:false,
    columns[2][data]:population,
    columns[2][name]:,
    columns[2][searchable]:true,
    columns[2][orderable]:true,
    columns[2][search][value]:,
    columns[2][search][regex]:false,
    columns[3][data]:capital,
    columns[3][name]:,
    columns[3][searchable]:true,
    columns[3][orderable]:true,
    columns[3][search][value]:,
    columns[3][search][regex]:false,
    columns[4][data]:longitude,
    columns[4][name]:,
    columns[4][searchable]:true,
    columns[4][orderable]:true,
    columns[4][search][value]:,
    columns[4][search][regex]:false,
    columns[5][data]:latitude,
    columns[5][name]:,
    columns[5][searchable]:true,
    columns[5][orderable]:true,
    columns[5][search][value]:,
    columns[5][search][regex]:false,
    order[0][column]:0,
    order[0][dir]:asc,
    start:0,
    length:10,
    search[value]:,
    search[regex]:false,
    _:1706236104815,
    controller:test3,
    action:getData
  ]
  */

  def getData() {
    DataTablesRequest dtr = new DataTablesRequest( params )
    log.info( "Requst: ${ dtr }" )

    List<City> cities = cityService.list(
        max: dtr.length,
        offset: dtr.start,
//        sort: dtr.columns[dtr.order[0].column].data,
//        order: dtr.order[0].dir
    )

    def draw = dtr.draw
    def recordsTotal = cityService.count()
    def recordsFiltered = 0

    def records = cities?.collect { city ->
      [
          name      : city.name,
          country   : city.country,
          population: city.population,
          capital   : city.capital,
          longitude : city.longitude,
          latitude  : city.latitude
      ]
    }

    def results = [
        draw           : draw,
        recordsTotal   : recordsTotal,
        recordsFiltered: 0,
        data           : records
    ]

    render contentType: 'application/json', text: results as JSON
  }

  def index() {
    [ initParams: [
        ajax      : [
            url    : '/test3/getData',
            dataSrc: 'data'
        ],
//        processing: true,
        serverSide: true,
        columns   : [
            [ data: 'name', title: 'Name' ],
            [ data: 'country', title: 'Country' ],
            [ data: 'population', title: 'Population' ],
            [ data: 'capital', title: 'Capital' ],
            [ data: 'longitude', title: 'Longitude' ],
            [ data: 'latitude', title: 'Latitude' ]
        ],
    ] ]
  }
}