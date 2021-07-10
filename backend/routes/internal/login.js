const router = require('express').Router()
const db = require('../../db')

router.get('/', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT * FROM candidato", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/genero', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM genero", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/municipio', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM municipio", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/escolaformacao', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM escolaformacao", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/nivelacademico', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM nivelacademico", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/especialidade', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM especialidade", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/provincia', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("SELECT nome FROM provincia", (error, results,) => {
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