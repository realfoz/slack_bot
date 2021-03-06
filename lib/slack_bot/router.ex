defmodule SlackBot.Router do
  use Trot.Router

  get "/thumbs" do
    conn = put_resp_content_type(conn, "application/json")
    message = %{
      "response_type" => "in_channel",
      "attachments" => [
        %{
          "text" => "",
          "image_url" => "https://s3.amazonaws.com/codeguy-slackbot/images/threethumbs.gif"
        }
      ]
    } |> Poison.encode!([])
    send_resp(conn, 200, message)
  end

  get "/thebeef" do
    conn = put_resp_content_type(conn, "application/json")
    message = %{
      "response_type" => "in_channel",
      "attachments" => [
        %{
          "text" => "You f***ing crushed it.",
          "image_url" => "https://s3.amazonaws.com/codeguy-slackbot/images/ezgif.com-optimize.gif"
        }
      ]
    } |> Poison.encode!([])
    send_resp(conn, 200, message)
  end

  get "/beers" do
    conn = put_resp_content_type(conn, "application/json")
    message = %{
      "response_type" => "in_channel",
      "attachments" => [
        %{
          "text" => "Beers. Now.",
          "image_url" => "https://s3.amazonaws.com/codeguy-slackbot/images/beer.gif"
        }
      ]
    } |> Poison.encode!([])
    send_resp(conn, 200, message)
  end

  get "/turku" do
    conn = put_resp_content_type(conn, "application/json")
    message = %{
      "response_type" => "in_channel",
      "attachments" => [
        %{
          "text" => "Hey, Turku!",
          "image_url" => "https://s3.amazonaws.com/codeguy-slackbot/images/turku.jpg"
        }
      ]
    } |> Poison.encode!([])
    send_resp(conn, 200, message)
  end

  get "/fozfuk" do
    conn = put_resp_content_type(conn, "application/json")
    message = %{
      "response_type" => "in_channel",
      "attachments" => [
        %{
          "text" => "Take that, fuckers!",
          "image_url" => "https://s3.amazonaws.com/codeguy-slackbot/images/foz_dance_opt.gif"
        }
      ]
    } |> Poison.encode!([])
    send_resp(conn, 200, message)
  end

  import_routes Trot.NotFound
end
