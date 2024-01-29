package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class Test2ControllerSpec extends Specification implements ControllerUnitTest<Test2Controller> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
