defmodule MrWeb.EmailController do
  use MrWeb, :controller
  alias Mr.{Email, Mailer}

  def index(conn, %{"description" => description}) do
    description |> Email.generic_email |> Mailer.deliver_later

    json conn, %{message: description}
  end

end