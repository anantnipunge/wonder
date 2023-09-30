const express = require('express');
const {uploadProduct,uploadImages,getProductsByCategory,getImages} = require('../Controllers/productController');

const router = express.Router();

router.post('/upload',uploadProduct);
router.post('/:productId',uploadImages);
router.get('/:productId',getImages);
router.get('/category/:id',getProductsByCategory);

module.exports = router;