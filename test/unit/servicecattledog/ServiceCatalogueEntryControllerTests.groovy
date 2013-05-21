package servicecattledog



import org.junit.*
import grails.test.mixin.*

@TestFor(ServiceCatalogueEntryController)
@Mock(ServiceCatalogueEntry)
class ServiceCatalogueEntryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/serviceCatalogueEntry/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.serviceCatalogueEntryInstanceList.size() == 0
        assert model.serviceCatalogueEntryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.serviceCatalogueEntryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.serviceCatalogueEntryInstance != null
        assert view == '/serviceCatalogueEntry/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/serviceCatalogueEntry/show/1'
        assert controller.flash.message != null
        assert ServiceCatalogueEntry.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceCatalogueEntry/list'

        populateValidParams(params)
        def serviceCatalogueEntry = new ServiceCatalogueEntry(params)

        assert serviceCatalogueEntry.save() != null

        params.id = serviceCatalogueEntry.id

        def model = controller.show()

        assert model.serviceCatalogueEntryInstance == serviceCatalogueEntry
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceCatalogueEntry/list'

        populateValidParams(params)
        def serviceCatalogueEntry = new ServiceCatalogueEntry(params)

        assert serviceCatalogueEntry.save() != null

        params.id = serviceCatalogueEntry.id

        def model = controller.edit()

        assert model.serviceCatalogueEntryInstance == serviceCatalogueEntry
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/serviceCatalogueEntry/list'

        response.reset()

        populateValidParams(params)
        def serviceCatalogueEntry = new ServiceCatalogueEntry(params)

        assert serviceCatalogueEntry.save() != null

        // test invalid parameters in update
        params.id = serviceCatalogueEntry.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/serviceCatalogueEntry/edit"
        assert model.serviceCatalogueEntryInstance != null

        serviceCatalogueEntry.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/serviceCatalogueEntry/show/$serviceCatalogueEntry.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        serviceCatalogueEntry.clearErrors()

        populateValidParams(params)
        params.id = serviceCatalogueEntry.id
        params.version = -1
        controller.update()

        assert view == "/serviceCatalogueEntry/edit"
        assert model.serviceCatalogueEntryInstance != null
        assert model.serviceCatalogueEntryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/serviceCatalogueEntry/list'

        response.reset()

        populateValidParams(params)
        def serviceCatalogueEntry = new ServiceCatalogueEntry(params)

        assert serviceCatalogueEntry.save() != null
        assert ServiceCatalogueEntry.count() == 1

        params.id = serviceCatalogueEntry.id

        controller.delete()

        assert ServiceCatalogueEntry.count() == 0
        assert ServiceCatalogueEntry.get(serviceCatalogueEntry.id) == null
        assert response.redirectedUrl == '/serviceCatalogueEntry/list'
    }
}
