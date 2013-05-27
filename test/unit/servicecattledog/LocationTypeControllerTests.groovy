package servicecattledog



import org.junit.*
import grails.test.mixin.*

@TestFor(LocationTypeController)
@Mock(LocationType)
class LocationTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/locationType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.locationTypeInstanceList.size() == 0
        assert model.locationTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.locationTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.locationTypeInstance != null
        assert view == '/locationType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/locationType/show/1'
        assert controller.flash.message != null
        assert LocationType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/locationType/list'

        populateValidParams(params)
        def locationType = new LocationType(params)

        assert locationType.save() != null

        params.id = locationType.id

        def model = controller.show()

        assert model.locationTypeInstance == locationType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/locationType/list'

        populateValidParams(params)
        def locationType = new LocationType(params)

        assert locationType.save() != null

        params.id = locationType.id

        def model = controller.edit()

        assert model.locationTypeInstance == locationType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/locationType/list'

        response.reset()

        populateValidParams(params)
        def locationType = new LocationType(params)

        assert locationType.save() != null

        // test invalid parameters in update
        params.id = locationType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/locationType/edit"
        assert model.locationTypeInstance != null

        locationType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/locationType/show/$locationType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        locationType.clearErrors()

        populateValidParams(params)
        params.id = locationType.id
        params.version = -1
        controller.update()

        assert view == "/locationType/edit"
        assert model.locationTypeInstance != null
        assert model.locationTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/locationType/list'

        response.reset()

        populateValidParams(params)
        def locationType = new LocationType(params)

        assert locationType.save() != null
        assert LocationType.count() == 1

        params.id = locationType.id

        controller.delete()

        assert LocationType.count() == 0
        assert LocationType.get(locationType.id) == null
        assert response.redirectedUrl == '/locationType/list'
    }
}
