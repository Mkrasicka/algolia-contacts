class ContactsController < ApplicationController
  def index
    if params[:query].present?
      @contacts = Contact
                  .search("lower(firstname) LIKE :query
                  OR lower(lastname) LIKE :query",
                  query: "%#{params[:query]}%")
    else
      @contacts = Contact.all
    end

    @hits = Contact.search(@q, { hitsPerPage: 5, page: (params['page'] || 1) })
  end
end
