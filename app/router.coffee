# app/router.coffee

`import Ember from 'ember'`

Router = Ember.Router.extend(location: WukongAppENV.locationType)
Router.map ->
  @resource "listings", ->
    @route 'show', {path: '/:id'}

`export default Router`
