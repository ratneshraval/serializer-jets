require 'active_model_serializers/test/schema'
require 'json'
require 'json_schema'

describe TodosController, type: :controller do

  describe 'GET index' do
    it 'should render TodoSerializer' do
      get '/todos'
      # assert_serializer TodoSerializer
      assert_schema('todos.json')
    end
  end

end
