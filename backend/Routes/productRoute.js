const express = require('express');
const {uploadProduct,uploadImages,getImages, getProductsByCategory} = require('../Controllers/productController');

const router = express.Router();

router.post('/upload',uploadProduct);
router.post('/:productId',uploadImages);
router.get('/:productId',getImages);
router.get('/category/:category',getProductsByCategory);

module.exports = router;