module.exports = function(app) {
  var express = require('express');
  var postsRouter = express.Router();
  var posts = [
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
      ]

  postsRouter.get('/', function(req, res) {
    res.send({posts: posts});
  });

  postsRouter.get('/:post_id', function(req, res) {
    index = params.post_id - 1
    res.send({post: posts[index]});
  });
  app.use('/api/v1/posts', postsRouter);
};
