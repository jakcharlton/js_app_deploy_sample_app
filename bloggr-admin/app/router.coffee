`import Ember from 'ember';`

Router = Ember.Router.extend
  location: BloggrAdminENV.locationType
  rootURL: '/admin/'

Router.map ->
  @resource 'posts'

  @route '/'
  @route 'catchAll', path: '/*:'

`export default Router;`
