const productModel = require('../Models/productModel');
const imagesModel = require('../Models/productImages');


const uploadProduct = async (req, res) => {
    try {
        const { title, description, imagePaths, category,price } = req.body;
        if(!title || !description || !imagePaths || !price){
            res.status(400).json('include all neccesary fields!');
        }
        const product = new productModel({ title, description, imagePaths, category, price });
        await product.save();
        
        res.status(200).json({_id:product._id,title,description,image:imagePaths[0], category,price});

    } catch (error) {
        console.log(error);
        res.status(500).json(error);
    }
};

const getProductsByCategory = async (req, res) => {
    try {
        const { category } = req.params;

        const productsByCategories = await productModel.find({ category });

        res.status(200).json({productsByCategories});

    } catch (error) {
        console.log(error);
        res.status(500).json(error);
    }
};

const uploadImages = async (req, res) => {
    try {
        const { productId } = req.params;
        const { imagePaths } = req.body;
        const Images = new imagesModel({ productId , imagePaths });
        await Images.save();
        
        res.status(200).json({_id:Images._id,productId,image:imagePaths[0]});

    } catch (error) {
        console.log(error);
        res.status(500).json(error)
    }
};

const getImages = async (req, res) => {
    try {
        const { productId } = req.params;
        const Images = await imagesModel.findOne({productId});
        res.status(200).json(Images);
    } catch (error) {
        console.log(error);
        res.status(500).json(error);
    }
};


module.exports = {uploadProduct,uploadImages,getImages, getProductsByCategory};

