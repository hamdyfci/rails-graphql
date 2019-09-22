require 'test_helper'

module Mutations
  class CreateLinkTest < ActiveSupport::TestCase
    def perform(user: nil, **args)
      Mutations::CreateLink.new(object: nil, context: {}).resolve(args)
    end

    test 'create a new link' do
      link = perform(
        url: 'link.com',
        description: 'link desc'
      )

      assert link.persisted?
      assert_equal link.url, 'link.com'
      assert_equal link.description, 'link desc'
    end
  end
end
