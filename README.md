# Wukong-app

npm install --save-dev liquid-fire
npm install --save-dev ember-cli-cordova
npm install --save-dev broccoli-emblem-compiler
npm install --save-dev broccoli-sass
npm install --save-dev ember-cli-coffeescript  
npm install --save-dev liquid-fire


# ember cli cordova
[ember-cli-cordova](https://github.com/poetic/ember-cli-cordova)
Then you need to initialize the cordova part. Mobile app's require a com
identifier/reverse style domain so we need to specify it here:

```sh
ember generate cordova-init com.reverse.domain
```

This will generate a base cordova iOS app and store it within the `cordova/`
directory. If you would like to add other platforms, you can run the
`ember cordova` command:

```sh
ember cordova platform add android
```

You must have [cordova](https://www.npmjs.org/package/cordova) installed
globally for this command to work.

# Usage

## Blueprints
+ `ember g cordova-init com.reverse.domain platform:android` Required generator
  that sets up the cordova project with a few tweaks to the ember app
+ `ember g cordova-starter-kit` Adds some packages and files that makes up the
  base setup for projects I develop.

## Commands
+ `ember cordova:open` open xcode project
+ `ember cordova:build --environment production --platform ios` build cordova project
+ `ember cordova:archive 0.0.2 --environment staging --commit --tag` archive ios project with xcode
+ `ember cordova:prepare` needs to be run after cloning a project
+ `ember cordova` Passes commands(plugin(s), platform(s), run, emulate) and arguments to the cordova command
+ `ember help` ember cli help with a section for addon provided commands as well


# assets compilation
app.import('bower_components/bootstrap/dist/css/bootstrap.css');
app.import('bower_components/bootstrap/dist/css/bootstrap.css.map', {
  destDir: 'assets'
});

app.import('bower_components/font-awesome/css/font-awesome.css');
app.import('bower_components/font-awesome/fonts/fontawesome-webfont.ttf', {
  destDir: 'fonts'
});
app.import('bower_components/font-awesome/fonts/fontawesome-webfont.woff', {
  destDir: 'fonts'
});


# load app initializers. this is needed for transitions.js to work
loadInitializers(App, "wukong-app")


# i18n
bower install cldr ember-i18n --save
app.import('vendor/cldr/plurals.js');
app.import('vendor/ember-i18n/lib/i18n.js');

- use initializer
`ember generate initializer i18n`

TRANSLATIONS =
  "home": "home"
  "user.edit.title": "Edit User"
  "user.followers.title.one": "One Follower"
  "user.followers.title.other": "All {{count}} Followers"
  "button.add_user.title": "Add a user"
  "button.add_user.text": "Add"
  "button.add_user.disabled": "Saving..."

I18nInitializer =
  name: 'i18n'

  initialize: () ->
    Em.I18n.translations = TRANSLATIONS

`export default I18nInitializer`

- in helpers (i18n-t.coffee)
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


## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM) and [Bower](http://bower.io/)

## Installation

* `git clone <repository-url>` this repository
* change into the new directory
* `npm install`
* `bower install`

## Running / Development

* `ember server`
* Visit your app at http://localhost:4200.

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

### Deploying

Specify what it takes to deploy your app.

## Further Reading / Useful Links

* ember: http://emberjs.com/
* ember-cli: http://www.ember-cli.com/
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)
