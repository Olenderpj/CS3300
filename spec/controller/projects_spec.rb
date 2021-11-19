require "rails_helper"

# Unit test for Controller portion of the Project MVC
RSpec.describe ProjectsController, type: :controller do

    # Test routing for index 
    context "GET #index" do
        login_user

        # Test that controller can route to index
        it "returns a success response" do
            get :index
            # expect(response.success).to eq(true)
            # Test passes if route returns a success
            expect(response).to be_success

        end
    end

    # Test routing for individual projects
    context "GET #show" do
        login_user

        # Create a test project
        let!(:project) { Project.create(title: "Test title", description: "Test description") }
        # Test that controller can route to test project
        it "returns a success response" do
            get :show, params: { id: project }
            # Test passes if route returns a success
            expect(response).to be_success
        end
    end
end