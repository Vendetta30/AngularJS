package angular

import org.codehaus.groovy.grails.commons.DefaultGrailsControllerClass
import java.lang.reflect.Method
import grails.web.Action
class StartController {

    def index() {
        def controllerActionNames = [:]

        grailsApplication.controllerClasses.each { DefaultGrailsControllerClass controller ->

            Class controllerClass = controller.clazz

            if (controllerClass.name.startsWith('angular')) {
                String logicalControllerName = controller.logicalPropertyName
                println("logicalControllerName ${logicalControllerName}")
                controllerClass.methods.each { Method method ->

                    if (method.getAnnotation(Action)) {
                        def actions = controllerActionNames[logicalControllerName] ?: []
                        actions << method.name

                        controllerActionNames[logicalControllerName] = actions
                        print actions
                    }
                }
            }
        }
        render (view:  "../index",model: [controllerActionNames:controllerActionNames])
    }

    def introduceController() {
        render(view: 'introduceController')
    }

    def moreThanOnePorduct() {
        render(view: 'moreThanOnePorduct')
    }

    def firstFilter() {
        render(view: 'firstFilter')
    }

    def imageRender() {
        render(view: 'imageRender')
    }

    def tabbing() {
        render(view: 'tabbing')
    }

    def tabbingController() {
        render(view: 'tabbingController')
    }

    def addReview() {
        render(view: 'addReview')
    }

    def addReviewController() {
        render(view: 'addReviewController')
    }

    def validation() {
        render(view: 'validation')
    }
}
