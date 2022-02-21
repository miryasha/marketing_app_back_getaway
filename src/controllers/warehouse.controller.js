const express = require('express');
const router = express.Router();



router.post('/',  createWh)
router.put('/',  editWh)
router.delete('/',  deleteWh)
router.get('/',  getAllWh)
router.get('/:id',  getWithIdWh)

router.post('/',  customWh)

 

function createWh(req, res) {
    
}


function editWh(req, res) {
    
}


function deleteWh(req, res) {
    
}


function getAllWh(req, res) {
    
}


function getWithIdWh(req, res) {
    
}


function customWh(req, res) {
    
}


  

module.exports = router;