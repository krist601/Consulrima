package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(EmployeeeController)
@Mock(Employeee)
class EmployeeeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/employeee/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.employeeeInstanceList.size() == 0
        assert model.employeeeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.employeeeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.employeeeInstance != null
        assert view == '/employeee/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/employeee/show/1'
        assert controller.flash.message != null
        assert Employeee.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/employeee/list'

        populateValidParams(params)
        def employeee = new Employeee(params)

        assert employeee.save() != null

        params.id = employeee.id

        def model = controller.show()

        assert model.employeeeInstance == employeee
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/employeee/list'

        populateValidParams(params)
        def employeee = new Employeee(params)

        assert employeee.save() != null

        params.id = employeee.id

        def model = controller.edit()

        assert model.employeeeInstance == employeee
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/employeee/list'

        response.reset()

        populateValidParams(params)
        def employeee = new Employeee(params)

        assert employeee.save() != null

        // test invalid parameters in update
        params.id = employeee.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/employeee/edit"
        assert model.employeeeInstance != null

        employeee.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/employeee/show/$employeee.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        employeee.clearErrors()

        populateValidParams(params)
        params.id = employeee.id
        params.version = -1
        controller.update()

        assert view == "/employeee/edit"
        assert model.employeeeInstance != null
        assert model.employeeeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/employeee/list'

        response.reset()

        populateValidParams(params)
        def employeee = new Employeee(params)

        assert employeee.save() != null
        assert Employeee.count() == 1

        params.id = employeee.id

        controller.delete()

        assert Employeee.count() == 0
        assert Employeee.get(employeee.id) == null
        assert response.redirectedUrl == '/employeee/list'
    }
}
