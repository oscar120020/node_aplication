const express = require('express')
const router = express.Router()

router.get('/', (req, res) => {
    res.send('hellooo world')
})


module.exports = router