//import Application from 'appkit/routes/application';
import App from 'appkit/app';

module("Acceptances - Index", {
  setup: function(){
    App.reset();
  }
});

test("Application renders", function(){

  visit('/').then(function(){
    ok('body');
    // ok(exists("img"));

    /*var list = find("row");
    (list.length, 3);
    equal(list.text(), "redyellowblue");*/
  });
});
