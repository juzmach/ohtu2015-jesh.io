require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ReferencesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Reference. As you add validations to Reference, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
	return :author => 'Pekka', :year => 2002, :publisher => 'Pekan kirjapaino', :title => 'Pekan kirja'
  }

  let(:invalid_attributes) {
return :year => 'Vuosi 85'
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReferencesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all references as @references" do
      reference = Reference.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:references)).to eq([reference])
    end
  end

  describe "GET #show" do
    it "assigns the requested reference as @reference" do
      reference = Reference.create! valid_attributes
      get :show, {:id => reference.to_param}, valid_session
      expect(assigns(:reference)).to eq(reference)
    end
  end

  describe "GET #new" do
    it "assigns a new reference as @reference" do
      get :new, {}, valid_session
      expect(assigns(:reference)).to be_a_new(Reference)
    end
  end

  describe "GET #edit" do
    it "assigns the requested reference as @reference" do
      reference = Reference.create! valid_attributes
      get :edit, {:id => reference.to_param}, valid_session
      expect(assigns(:reference)).to eq(reference)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Reference" do
        expect {
          post :create, {:reference => valid_attributes}, valid_session
        }.to change(Reference, :count).by(1)
      end

      it "assigns a newly created reference as @reference" do
        post :create, {:reference => valid_attributes}, valid_session
        expect(assigns(:reference)).to be_a(Reference)
        expect(assigns(:reference)).to be_persisted
      end

      it "redirects to the created reference" do
        post :create, {:reference => valid_attributes}, valid_session
        expect(response).to redirect_to(Reference.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved reference as @reference" do
        post :create, {:reference => invalid_attributes}, valid_session
        expect(assigns(:reference)).to be_a_new(Reference)
      end

      it "re-renders the 'new' template" do
        post :create, {:reference => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested reference" do
        reference = Reference.create! valid_attributes
        put :update, {:id => reference.to_param, :reference => new_attributes}, valid_session
        reference.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested reference as @reference" do
        reference = Reference.create! valid_attributes
        put :update, {:id => reference.to_param, :reference => valid_attributes}, valid_session
        expect(assigns(:reference)).to eq(reference)
      end

      it "redirects to the reference" do
        reference = Reference.create! valid_attributes
        put :update, {:id => reference.to_param, :reference => valid_attributes}, valid_session
        expect(response).to redirect_to(reference)
      end
    end

    context "with invalid params" do
      it "assigns the reference as @reference" do
        reference = Reference.create! valid_attributes
        put :update, {:id => reference.to_param, :reference => invalid_attributes}, valid_session
        expect(assigns(:reference)).to eq(reference)
      end

      it "re-renders the 'edit' template" do
        reference = Reference.create! valid_attributes
        put :update, {:id => reference.to_param, :reference => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested reference" do
      reference = Reference.create! valid_attributes
      expect {
        delete :destroy, {:id => reference.to_param}, valid_session
      }.to change(Reference, :count).by(-1)
    end

    it "redirects to the references list" do
      reference = Reference.create! valid_attributes
      delete :destroy, {:id => reference.to_param}, valid_session
      expect(response).to redirect_to(references_url)
    end
  end

end
