const app = require('./config/server');
const dbConnection = require('./config/dbConnection');
const indexRouter = require('./app/routes/index');

indexRouter(app, dbConnection);

const port = 7000;

app.listen(port);
console.log("----------------- API online: http://localhost:" + port + " -----------------");






