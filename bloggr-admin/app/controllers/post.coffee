`import Ember from 'ember'`

PostController = Ember.ObjectController.extend
  status: null
  actions:
    savePost: ->
      @get('model')
      .save()
      .then => @set 'status', 'saved'
      .catch => @set 'status', 'error'

`export default PostController`
