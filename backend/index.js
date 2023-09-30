const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');
const productRoute = require('./Routes/productRoute');

require('dotenv').config();



const app = express(); 
app.use(express.json());
app.use(cors());
app.use('/api/product',productRoute);

const uri = process.env.ATLAS_URI;

mongoose.connect(uri,{useNewUrlParser:true,
   useUnifiedTopology:true}).then(
    console.log('MongoDB connection established')).catch((error)=>{
    console.log('mongoDB connection failed',error.message);
   }
)

app.get('/',(req,res)=>{
    res.send('welcome here');
})

app.listen(5000,(req,res)=>{
    console.log('server is running on port 5000');
})

