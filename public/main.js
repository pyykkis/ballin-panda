(function() {

  require.config({
    paths: {
      "jquery": "components/jquery/jquery"
    }
  });

  require(['jquery', 'controllers/hello'], function($, hello) {
    return $(function() {
      hello.init("dear Friend");
      return console.log("Hello world!");
    });
  });

}).call(this);
