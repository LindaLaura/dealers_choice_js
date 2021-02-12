const {client} = require ('./db');
const express = require('express');
const path = require ('path');

const app = express();

app.use('/public', express.static(path.join(__dirname, 'public')));


app.get('/',  async(req, res, next)=> {
    try{
        const response = await client.query('SELECT * FROM makers;');
        const makers= response.rows;
        res.send(`
            <html>
                <head>
                <link rel ='stylesheet' href='/public/styles.css' />
                </head>
                <body>
                    <h1> Cars World </h1>
                    <h2> Brands</h2>
                    <ul>
                        ${
                            makers.map(makers => `
                                <li>
                                    <a href='/makers/${makers.id}'>
                                    ${makers.name}
                                </li>
                            `).join('')
                        }
                    </ul>
                </body>
            </html>
        `);
    }
    catch(ex){
        next(ex);
    }
});

const port = process.env.PORT || 1337;


const setUp = async() => {
    try{
        await client.connect();
        console.log('Connected to database');
        app.listen(port, ()=> console.log(`listening on port ${port}`));
    }
    catch(ex){
        console.log(ex)
    }
};


setUp();