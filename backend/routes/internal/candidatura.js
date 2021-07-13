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

router.get('/escalao', (_, res) => {
    db.query("SELECT * FROM escalao", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/escolaaplicacao', (_, res) => {
    db.query("SELECT * FROM escola_aplicacao", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/nivelensino', (_, res) => {
    db.query("SELECT * FROM nivel_ensino", (error, results,) => {
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