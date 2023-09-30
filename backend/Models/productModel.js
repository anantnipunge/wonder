const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
    title:{type:String,required:true,maxlength:30},
    description:{type:String,required:true},
    imagePath: String,
    category: String,
    price:{type:String},
})

const productModel = mongoose.model('ProductImages',productSchema);

module.exports = productModel;