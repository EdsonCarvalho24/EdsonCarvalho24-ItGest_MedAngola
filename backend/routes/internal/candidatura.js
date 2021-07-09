const router = require('express').Router()
const db = require('../../db')

router.get('/candidatura', (_, res) => {
    // listar os usuarios "uauários" que estão na BD
    db.query("SELECT * FROM candidatura", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})
module.exports = router