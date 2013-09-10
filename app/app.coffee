`import Resolver from 'resolver'`

TunedIn = Ember.Application.create
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true
  modulePrefix: 'appkit'
  Resolver: Resolver

`import routes from 'appkit/routes'`

TunedIn.Router.map(
  routes
)

`export default TunedIn`