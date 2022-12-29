class Contact < ApplicationRecord

  include AlgoliaSearch
  algoliasearch do
    attributes :firstname, :lastname
    searchableAttributes ['firstname', 'lastname']
  end
end
