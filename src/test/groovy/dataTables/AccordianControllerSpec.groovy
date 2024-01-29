package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class AccordianControllerSpec extends Specification implements ControllerUnitTest<AccordianController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
