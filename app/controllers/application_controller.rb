class ApplicationController < ActionController::API
    include Knock::Authenticable
  
  protected
  
def authorize_as_admin
    return head(:unauthorized) unless !current_customer.nil? && current_customer.is_admin?
end

end
