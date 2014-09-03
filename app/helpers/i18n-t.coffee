`import Ember from "ember";`

I = Ember.Handlebars.makeBoundHelper (property, options) ->
  params = options.hash
  self = this

  return null if property is undefined

  # Support variable interpolation for our string
  Object.keys(params).forEach (key) ->
    if params[key].length > 0
      params[key] = Ember.Handlebars.get(self, params[key], options)

  Ember.I18n.t property, params

`export default I`
