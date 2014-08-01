`import Ember from 'ember';`

IndexRoute = Ember.Route.extend
  beforeModel: -> @transitionTo 'posts'

`export default IndexRoute;`
