package dataTables

import groovy.util.logging.Slf4j
import io.micronaut.http.HttpRequest
import io.micronaut.http.client.HttpClient
import io.micronaut.http.uri.UriBuilder

@Slf4j
class Test5Controller {

  def getData() {
    log.info( "Request: ${ params }" )

    def results = proxyGet( params )

    log.info( "Reply: ${ results }" )

    render contentType: 'application/json', text: results
  }

  def proxyGet( def params ) {
    def url = 'https://datatables.net'.toURL()
    def httpClient = HttpClient.create( url )
    def uriBuilder = UriBuilder.of( '/examples/server_side/scripts/server_processing.php' )

    params.each { k, v -> uriBuilder.queryParam( k, v ) }

    URI uri = uriBuilder.build()
    HttpRequest wmsRequest = HttpRequest.GET( uri )

    httpClient.toBlocking().retrieve( wmsRequest, String )
  }


  def index() {

  }
}