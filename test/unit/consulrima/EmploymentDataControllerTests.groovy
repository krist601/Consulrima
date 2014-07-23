package consulrima



import org.junit.*
import grails.test.mixin.*

@TestFor(EmploymentDataController)
@Mock(EmploymentData)
class EmploymentDataControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/employmentData/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.employmentDataInstanceList.size() == 0
        assert model.employmentDataInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.employmentDataInstance != null
    }

    void testSave() {
        controller.save()

        assert model.employmentDataInstance != null
        assert view == '/employmentData/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/employmentData/show/1'
        assert controller.flash.message != null
        assert EmploymentData.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/employmentData/list'

        populateValidParams(params)
        def employmentData = new EmploymentData(params)

        assert employmentData.save() != null

        params.id = employmentData.id

        def model = controller.show()

        assert model.employmentDataInstance == employmentData
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/employmentData/list'

        populateValidParams(params)
        def employmentData = new EmploymentData(params)

        assert employmentData.save() != null

        params.id = employmentData.id

        def model = controller.edit()

        assert model.employmentDataInstance == employmentData
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/employmentData/list'

        response.reset()

        populateValidParams(params)
        def employmentData = new EmploymentData(params)

        assert employmentData.save() != null

        // test invalid parameters in update
        params.id = employmentData.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/employmentData/edit"
        assert model.employmentDataInstance != null

        employmentData.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/employmentData/show/$employmentData.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        employmentData.clearErrors()

        populateValidParams(params)
        params.id = employmentData.id
        params.version = -1
        controller.update()

        assert view == "/employmentData/edit"
        assert model.employmentDataInstance != null
        assert model.employmentDataInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/employmentData/list'

        response.reset()

        populateValidParams(params)
        def employmentData = new EmploymentData(params)

        assert employmentData.save() != null
        assert EmploymentData.count() == 1

        params.id = employmentData.id

        controller.delete()

        assert EmploymentData.count() == 0
        assert EmploymentData.get(employmentData.id) == null
        assert response.redirectedUrl == '/employmentData/list'
    }
}
