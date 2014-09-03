`import Ember from 'ember'`
`import Resolver from 'ember/resolver'`
`import loadInitializers from 'ember/load-initializers'`

Ember.MODEL_FACTORY_INJECTIONS = true
App = Ember.Application.extend(
  modulePrefix: "wukong-app" # TODO: loaded via config
  Resolver: Resolver
)

# this is needed for transitions.js to work
loadInitializers(App, "wukong-app")

`export default App`
