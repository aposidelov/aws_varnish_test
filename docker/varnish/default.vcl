vcl 4.1;

backend default {
    .host = "nginx";
    .port = "80";
}

sub vcl_deliver {
  set resp.http.X-Cache = "HIT";
  set resp.http.X-Test = "Hello2";
}
