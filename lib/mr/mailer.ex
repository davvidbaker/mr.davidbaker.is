defmodule Mr.Mailer do
  use Bamboo.Mailer, otp_app: :mr
end

defmodule Mr.Email do
  import Bamboo.Email
  
  def welcome_email do
    new_email()
    |> to("davvidbaker@gmail.com")
    |> from("me@mr.davidbaker.is")
    |> subject("Welcome!!!")
    |> html_body("<strong>Welcome</strong>")
    |> text_body("welcome sire")
  end

  def generic_email(body_text) do
    new_email()
    |> to("davvidbaker@gmail.com")
    |> from("404@mr.davidbaker.is")
    |> subject("davidbaker.is/#{body_text}")
    |> html_body("David Baker is <strong>#{body_text}</strong>.")
  end
end