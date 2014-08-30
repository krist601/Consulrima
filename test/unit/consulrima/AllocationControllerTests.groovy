package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(AllocationController)
@Mock(Allocation)
class AllocationControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/allocation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.allocationInstanceList.size() == 0
        assert model.allocationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.allocationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.allocationInstance != null
        assert view == '/allocation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/allocation/show/1'
        assert controller.flash.message != null
        assert Allocation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/allocation/list'

        populateValidParams(params)
        def allocation = new Allocation(params)

        assert allocation.save() != null

        params.id = allocation.id

        def model = controller.show()

        assert model.allocationInstance == allocation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/allocation/list'

        populateValidParams(params)
        def allocation = new Allocation(params)

        assert allocation.save() != null

        params.id = allocation.id

        def model = controller.edit()

        assert model.allocationInstance == allocation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/allocation/list'

        response.reset()

        populateValidParams(params)
        def allocation = new Allocation(params)

        assert allocation.save() != null

        // test invalid parameters in update
        params.id = allocation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/allocation/edit"
        assert model.allocationInstance != null

        allocation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/allocation/show/$allocation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        allocation.clearErrors()

        populateValidParams(params)
        params.id = allocation.id
        params.version = -1
        controller.update()

        assert view == "/allocation/edit"
        assert model.allocationInstance != null
        assert model.allocationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/allocation/list'

        response.reset()

        populateValidParams(params)
        def allocation = new Allocation(params)

        assert allocation.save() != null
        assert Allocation.count() == 1

        params.id = allocation.id

        controller.delete()

        assert Allocation.count() == 0
        assert Allocation.get(allocation.id) == null
        assert response.redirectedUrl == '/allocation/list'
    }
}
