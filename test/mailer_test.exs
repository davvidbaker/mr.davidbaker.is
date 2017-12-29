# Using the mailer from the Getting Started section
defmodule Mr.MailerTest do
  use ExUnit.Case
  use Bamboo.Test


  test "404 email contains correct body" do
    # Unit testing is easy since the email is just a struct
    email = Mr.Email.generic_email("sending an email")

    assert email.to == "davvidbaker@gmail.com"
    # The =~ checks that the html_body contains the text on the right
    assert email.html_body =~ "David Baker is <strong>sending an email</strong>."
  end

  test "404 email integration test passes" do
  
    # Integration test with the helpers from Bamboo.Test
    Mr.Email.generic_email("crazy") 
    |> Mr.Mailer.deliver_now

    assert_delivered_email Mr.Email.generic_email("crazy")
  end
end
