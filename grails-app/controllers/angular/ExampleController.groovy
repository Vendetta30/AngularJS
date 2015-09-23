package angular

class ExampleController {

    def simple() {
        render(view: 'simple')
    }

    def ngInIt() {
        render(view: 'ngInIt')
    }

    def filters(){
        render(view: 'filters')
    }

    def basicController(){
        render (view: 'basicController')
    }

    def defineRoutes(){
        render (view: 'view1')
    }
}
