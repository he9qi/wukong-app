`import Ember from 'ember';`

R = Ember.Route.extend

  actions:
    back: -> @transitionTo 'listings'


`export default R`
