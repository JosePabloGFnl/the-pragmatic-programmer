scope "/", HelloPhoenix do
    pipe_through :browser #Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController

end
