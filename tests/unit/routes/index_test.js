import Channel from 'appkit/routes/channels';
import App from 'appkit/app';

var route;

module("Unit - ChannelRoute", {
  setup: function(){
    route = App.__container__.lookup('route:channels');
  }
});

test("it exists", function(){
  ok(route);
  ok(route instanceof Ember.Route);
});

test("#model", function(){
  deepEqual(route.model(), ['red', 'yellow', 'blue']);
});
