package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class MyCitiesControllerSpec extends Specification implements ControllerUnitTest<MyCitiesController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
