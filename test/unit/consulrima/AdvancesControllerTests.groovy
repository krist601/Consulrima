package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(AdvancesController)
@Mock(Advances)
class AdvancesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/advances/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.advancesInstanceList.size() == 0
        assert model.advancesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.advancesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.advancesInstance != null
        assert view == '/advances/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/advances/show/1'
        assert controller.flash.message != null
        assert Advances.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/advances/list'

        populateValidParams(params)
        def advances = new Advances(params)

        assert advances.save() != null

        params.id = advances.id

        def model = controller.show()

        assert model.advancesInstance == advances
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/advances/list'

        populateValidParams(params)
        def advances = new Advances(params)

        assert advances.save() != null

        params.id = advances.id

        def model = controller.edit()

        assert model.advancesInstance == advances
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/advances/list'

        response.reset()

        populateValidParams(params)
        def advances = new Advances(params)

        assert advances.save() != null

        // test invalid parameters in update
        params.id = advances.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/advances/edit"
        assert model.advancesInstance != null

        advances.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/advances/show/$advances.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        advances.clearErrors()

        populateValidParams(params)
        params.id = advances.id
        params.version = -1
        controller.update()

        assert view == "/advances/edit"
        assert model.advancesInstance != null
        assert model.advancesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/advances/list'

        response.reset()

        populateValidParams(params)
        def advances = new Advances(params)

        assert advances.save() != null
        assert Advances.count() == 1

        params.id = advances.id

        controller.delete()

        assert Advances.count() == 0
        assert Advances.get(advances.id) == null
        assert response.redirectedUrl == '/advances/list'
    }
}
