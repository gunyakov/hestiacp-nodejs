require('dotenv').config();

const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.status(200).json({
        status: 200,
        message: "Ok sample done."
    })
});

app.listen(process.env.PORT, () => {
	console.log(`Server init on port: ${PORT}`);
});
