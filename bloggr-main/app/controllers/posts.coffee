`import Ember from 'ember';`

PostsController = Ember.Controller.extend
  pageHeader: Em.computed ->
    if @featureManager.isMarketer
      'This blog is for marketers'
    else
      'This blog is for educators'

`export default PostsController;`
