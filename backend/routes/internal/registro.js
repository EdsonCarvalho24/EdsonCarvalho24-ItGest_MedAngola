const router = require('express').Router()
const bcrypt = require('bcrypt')
//const jwt = require('jsonwebtoken')
const { sanitize } = require('indicative/sanitizer')
const { validate } = require('indicative/validator')
const db = require('../../db')

router.get('/genero', (_, res) => {
    db.query("SELECT * FROM genero", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

router.get('/municipio/:id', (req, res) => {
    const { id } = req.params
    db.query(`SELECT * FROM municipio where id_provincia =  ${id}`, (error, results,) => {
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
    db.query("SELECT * FROM escolaformacao", (error, results,) => {
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
    db.query("SELECT * FROM especialidade", (error, results,) => {
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

    db.query("SELECT * FROM provincia", (error, results,) => {
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
    db.query("SELECT * FROM nivelacademico", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

// router.post('/nivel', (req, res) => {
//     const data = req.body
//     res.status(200).json({
//         sucess: true,
//         data
//     })

//})

router.post('/new', (req, res) => {
    const candidato = req.body
    console.log(candidato)
    validate(candidato, {
        nome: 'required',
        email: 'required|email',
        senha: 'required|min:6',
        confSenha: 'required|same:senha',
        data_nascimento: 'required'
    }).then((value) => {
        console.log('Aqui2', value)
        sanitize(value, {
            email: 'trim|lowerCase',
            senha: 'trim'
        })
        console.log(value)
        delete value.confSenha

        bcrypt.hash(value.senha, 10).then((hash) => {
            console.log(value)
            value.senha = hash
            db.query('INSERT INTO candidato SET ?', [value], (error) => {
                if (error) {
                    throw error
                }

                res.send({
                    code: 200
                })
            })
        }).catch((error) => {
            res.status(400).send(error)
        })
    })
})



module.exports = router