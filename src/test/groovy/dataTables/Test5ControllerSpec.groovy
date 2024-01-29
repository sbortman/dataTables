package dataTables

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class Test5ControllerSpec extends Specification implements ControllerUnitTest<Test5Controller> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
