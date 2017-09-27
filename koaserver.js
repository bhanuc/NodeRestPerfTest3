var Koa = require('koa');
var app = new Koa();

app.use(ctx => {
	ctx.set('Connection', 'close');
  ctx.body = 'Hello World!';
});

app.listen(8000);