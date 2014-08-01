module.exports = function(app) {
  var express = require('express');
  var postsRouter = express.Router();
  postsRouter.get('/posts', function(req, res) {
    res.send({posts:[
      { id: 1,
        title: 'Post 1',
        body: 'Post Body 1',
        author: 'Mark Twain' },
      { id: 2,
        title: 'Post 2',
        body: 'Post Body 2',
        author: 'Hemmingway' },
      { id: 3,
        title: 'Post 3',
        body: 'Post Body 3',
        author: 'Borges' }
    ]});
  });

  postsRouter.put('/posts/:post_id', function(req, res) {
    res.send({
    post: {
      id: req.params.past_id,
      title: 'Post 1',
      body: 'Post Body 1',
      author: 'Mark Twain' }
    });
  });
  app.use('/admin/api/', postsRouter);
};
