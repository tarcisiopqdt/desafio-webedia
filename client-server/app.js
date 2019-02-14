const app = require('./config/server');
const port = 2000;

const routerIndex = require('./app/routes/index');
routerIndex(app);


app.listen(port,function(){
    console.log("Cliente Server online em http://localhost:" + port);
});

