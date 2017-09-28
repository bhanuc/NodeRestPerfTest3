let aero = require('aero');
let app = aero();

app.use((request, response) => {
	response.end('Hello!');
});

app.run();