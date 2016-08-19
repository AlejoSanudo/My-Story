Rails.application.routes.draw do

  # authenticated :user do
      root to: "dashboard#show", as: "dashboard"  # => install Devise at some point
    # end
end
