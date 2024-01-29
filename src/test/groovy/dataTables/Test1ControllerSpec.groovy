package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class Test1ControllerSpec extends Specification implements ControllerUnitTest<Test1Controller> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
