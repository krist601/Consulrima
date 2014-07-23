package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(LoadController)
@Mock(Load)
class LoadControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/load/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.loadInstanceList.size() == 0
        assert model.loadInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.loadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.loadInstance != null
        assert view == '/load/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/load/show/1'
        assert controller.flash.message != null
        assert Load.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/load/list'

        populateValidParams(params)
        def load = new Load(params)

        assert load.save() != null

        params.id = load.id

        def model = controller.show()

        assert model.loadInstance == load
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/load/list'

        populateValidParams(params)
        def load = new Load(params)

        assert load.save() != null

        params.id = load.id

        def model = controller.edit()

        assert model.loadInstance == load
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/load/list'

        response.reset()

        populateValidParams(params)
        def load = new Load(params)

        assert load.save() != null

        // test invalid parameters in update
        params.id = load.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/load/edit"
        assert model.loadInstance != null

        load.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/load/show/$load.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        load.clearErrors()

        populateValidParams(params)
        params.id = load.id
        params.version = -1
        controller.update()

        assert view == "/load/edit"
        assert model.loadInstance != null
        assert model.loadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/load/list'

        response.reset()

        populateValidParams(params)
        def load = new Load(params)

        assert load.save() != null
        assert Load.count() == 1

        params.id = load.id

        controller.delete()

        assert Load.count() == 0
        assert Load.get(load.id) == null
        assert response.redirectedUrl == '/load/list'
    }
}
