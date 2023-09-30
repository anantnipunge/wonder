const mongoose = require('mongoose');

const imagesSchema = new mongoose.Schema({
    productId: String,
    imagePaths: [String]
})

const imagesModel = mongoose.model('ProductImages',imagesSchema);

module.exports = imagesModel;