TRANSLATIONS =
  "home": "主页"
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
