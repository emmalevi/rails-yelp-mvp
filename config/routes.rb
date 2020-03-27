Rails.application.routes.draw do
get "restaurants", to: "restaurants#index"
get "restaurants/new", to: "restaurants#new", as: :new_restaurant
post "restaurants", to: "restaurants#create"
get "restaurants/:id", to: "restaurants#show", as: :restaurant

# NB: The `show` route needs to be *after* `new` route.
get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_review
post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
get "reviews/:id", to: "reviews#show"
end
