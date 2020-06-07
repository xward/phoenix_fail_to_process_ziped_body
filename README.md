# PhoenixFailToProcessZipedBody

created with:
mix phx.new phoenix_fail_to_process_ziped_body --app phoenix_fail_to_process_ziped_body --no-webpack  --no-html  --no-gettext  --no-ecto  --no-dashboard

start with:
`iex -S mix phx.server`

simulate a client that post on my api with a zipped body that is unmanaged by phoenix (malformed request 400)

```
► iex -S mix phx.server
Erlang/OTP 22 [erts-10.7] [source] [64-bit] [smp:10:10] [ds:10:10:10] [async-threads:1] [hipe]

Compiling 11 files (.ex)
Generated phoenix_fail_to_process_ziped_body app
[info] Running PhoenixFailToProcessZipedBodyWeb.Endpoint with cowboy 2.8.0 at 0.0.0.0:4000 (http)
[info] Access PhoenixFailToProcessZipedBodyWeb.Endpoint at http://localhost:4000
Interactive Elixir (1.10.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Client.post()
[info] POST /
[debug] ** (Plug.Parsers.ParseError) malformed request, a Jason.DecodeError exception was raised with message "unexpected byte at position 0: 0x1F"
    (plug 1.10.2) lib/plug/parsers/json.ex:88: Plug.Parsers.JSON.decode/2
    (plug 1.10.2) lib/plug/parsers.ex:313: Plug.Parsers.reduce/8
    (phoenix_fail_to_process_ziped_body 0.1.0) lib/phoenix_fail_to_process_ziped_body_web/endpoint.ex:1: PhoenixFailToProcessZipedBodyWeb.Endpoint.plug_builder_call/2
    (phoenix_fail_to_process_ziped_body 0.1.0) lib/plug/debugger.ex:132: PhoenixFailToProcessZipedBodyWeb.Endpoint."call (overridable 3)"/2
    (phoenix_fail_to_process_ziped_body 0.1.0) lib/phoenix_fail_to_process_ziped_body_web/endpoint.ex:1: PhoenixFailToProcessZipedBodyWeb.Endpoint.call/2
    (phoenix 1.5.3) lib/phoenix/endpoint/cowboy2_handler.ex:65: Phoenix.Endpoint.Cowboy2Handler.init/4
    (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_handler.erl:37: :cowboy_handler.execute/2
    (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_stream_h.erl:300: :cowboy_stream_h.execute/3
    (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_stream_h.erl:291: :cowboy_stream_h.request_process/3
    (stdlib 3.12) proc_lib.erl:249: :proc_lib.init_p_do_apply/3

{:ok,
 %Tesla.Env{
   __client__: %Tesla.Client{adapter: nil, fun: nil, post: [], pre: []},
   __module__: Client,
   body: "# Plug.Parsers.ParseError at POST /\n\nException:\n\n    ** (Plug.Parsers.ParseError) malformed request, a Jason.DecodeError exception was raised with message \"unexpected byte at position 0: 0x1F\"\n        (plug 1.10.2) lib/plug/parsers/json.ex:88: Plug.Parsers.JSON.decode/2\n        (plug 1.10.2) lib/plug/parsers.ex:313: Plug.Parsers.reduce/8\n        (phoenix_fail_to_process_ziped_body 0.1.0) lib/phoenix_fail_to_process_ziped_body_web/endpoint.ex:1: PhoenixFailToProcessZipedBodyWeb.Endpoint.plug_builder_call/2\n        (phoenix_fail_to_process_ziped_body 0.1.0) lib/plug/debugger.ex:132: PhoenixFailToProcessZipedBodyWeb.Endpoint.\"call (overridable 3)\"/2\n        (phoenix_fail_to_process_ziped_body 0.1.0) lib/phoenix_fail_to_process_ziped_body_web/endpoint.ex:1: PhoenixFailToProcessZipedBodyWeb.Endpoint.call/2\n        (phoenix 1.5.3) lib/phoenix/endpoint/cowboy2_handler.ex:65: Phoenix.Endpoint.Cowboy2Handler.init/4\n        (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_handler.erl:37: :cowboy_handler.execute/2\n        (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_stream_h.erl:300: :cowboy_stream_h.execute/3\n        (cowboy 2.8.0) /*****/phoenix_fail_to_process_ziped_body/deps/cowboy/src/cowboy_stream_h.erl:291: :cowboy_stream_h.request_process/3\n        (stdlib 3.12) proc_lib.erl:249: :proc_lib.init_p_do_apply/3\n    \n\n## Connection details\n\n### Params\n\n    %{}\n\n### Request info\n\n  * URI: http://localhost:4000/\n  * Query string: \n\n### Headers\n  \n  * connection: keep-alive\n  * content-encoding: gzip\n  * content-length: 40\n  * content-type: application/json\n  * host: localhost:4000\n  * te: \n\n### Session\n\n    nil\n",
   headers: [
     {"cache-control", "max-age=0, private, must-revalidate"},
     {"date", "Sun, 07 Jun 2020 13:50:29 GMT"},
     {"server", "Cowboy"},
     {"content-length", "1737"},
     {"content-type", "text/markdown; charset=utf-8"}
   ],
   method: :post,
   opts: [],
   query: [],
   status: 400,
   url: "http://localhost:4000"
 }}
iex(2)>

```
