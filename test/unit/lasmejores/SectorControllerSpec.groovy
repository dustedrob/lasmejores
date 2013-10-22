package lasmejores



import grails.test.mixin.*
import spock.lang.*

@TestFor(SectorController)
@Mock(Sector)
class SectorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.sectorInstanceList
            model.sectorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.sectorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def sector = new Sector()
            sector.validate()
            controller.save(sector)

        then:"The create view is rendered again with the correct model"
            model.sectorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            sector = new Sector(params)

            controller.save(sector)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/sector/show/1'
            controller.flash.message != null
            Sector.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def sector = new Sector(params)
            controller.show(sector)

        then:"A model is populated containing the domain instance"
            model.sectorInstance == sector
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def sector = new Sector(params)
            controller.edit(sector)

        then:"A model is populated containing the domain instance"
            model.sectorInstance == sector
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def sector = new Sector()
            sector.validate()
            controller.update(sector)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.sectorInstance == sector

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            sector = new Sector(params).save(flush: true)
            controller.update(sector)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/sector/show/$sector.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def sector = new Sector(params).save(flush: true)

        then:"It exists"
            Sector.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(sector)

        then:"The instance is deleted"
            Sector.count() == 0
            response.redirectedUrl == '/sector/index'
            flash.message != null
    }
}
