module Types
  class QueryType < Types::BaseObject

    field :all_links, [LinkType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end

  end
end
