package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(AntiquityController)
@Mock(Antiquity)
class AntiquityControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/antiquity/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.antiquityInstanceList.size() == 0
        assert model.antiquityInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.antiquityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.antiquityInstance != null
        assert view == '/antiquity/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/antiquity/show/1'
        assert controller.flash.message != null
        assert Antiquity.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/antiquity/list'

        populateValidParams(params)
        def antiquity = new Antiquity(params)

        assert antiquity.save() != null

        params.id = antiquity.id

        def model = controller.show()

        assert model.antiquityInstance == antiquity
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/antiquity/list'

        populateValidParams(params)
        def antiquity = new Antiquity(params)

        assert antiquity.save() != null

        params.id = antiquity.id

        def model = controller.edit()

        assert model.antiquityInstance == antiquity
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/antiquity/list'

        response.reset()

        populateValidParams(params)
        def antiquity = new Antiquity(params)

        assert antiquity.save() != null

        // test invalid parameters in update
        params.id = antiquity.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/antiquity/edit"
        assert model.antiquityInstance != null

        antiquity.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/antiquity/show/$antiquity.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        antiquity.clearErrors()

        populateValidParams(params)
        params.id = antiquity.id
        params.version = -1
        controller.update()

        assert view == "/antiquity/edit"
        assert model.antiquityInstance != null
        assert model.antiquityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/antiquity/list'

        response.reset()

        populateValidParams(params)
        def antiquity = new Antiquity(params)

        assert antiquity.save() != null
        assert Antiquity.count() == 1

        params.id = antiquity.id

        controller.delete()

        assert Antiquity.count() == 0
        assert Antiquity.get(antiquity.id) == null
        assert response.redirectedUrl == '/antiquity/list'
    }
}
