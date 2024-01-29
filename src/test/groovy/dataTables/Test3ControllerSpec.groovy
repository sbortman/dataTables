package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class Test3ControllerSpec extends Specification implements ControllerUnitTest<Test3Controller> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
