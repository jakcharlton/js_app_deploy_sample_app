`import Ember from 'ember';`

Router = Ember.Router.extend
  location: BloggrENV.locationType

Router.map ->
  @resource 'posts', ->
    @resource 'post', path: '/:post_id'
  @route '/'

`export default Router;`
