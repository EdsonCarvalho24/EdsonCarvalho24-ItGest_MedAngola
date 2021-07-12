const router = require('express').Router()
const { validate } = require('indicative/validator')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
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
router.post('/', (req, res) => {
    const candidato = req.body

    validate(candidato, {
        nome: 'required',
        email: 'required|email',
        senha: 'required',
    }).then((value) => {
        db.query('INSERT INTO candidato SET ?', [value], (error, results,) => {
            if (error) {
                throw error
            }

            const { insertId } = results

            db.query('SELECT * FROM candidato WHERE id = ? LIMIT 1', [insertId], (error, results,) => {
                if (error) {
                    throw error
                }

                res.send({
                    code: 200,
                    meta: null,
                    data: results[0]
                })
            })
        })
    }).catch((error) => {
        res.status(400).send(error)
    })
})

//login
module.exports = (req, res) => {
     validate(req.body, {
       email: 'required|email',
      senha: 'required'
    }).then((value) => {
    db.query('SELECT email FROM candidato WHERE email = ?', [value.email], (error, results) => {
        if (results.length === 0) {
            res.status(400).send('Não é possível encontrar nenhuma conta que corresponda ao nome de usuário e senha fornecidos')
        } else {
            bcrypt.compare(value.senha, results[0].senha)
                .then((match) => {
                    if (match) {
                        const secret = 'B18fbWIyeU1utFA31mzGaVyzjyL9ZnfP'
                        const data = { id: results[0].id }
                        delete results[0].senha
                        const authToken = jwt.sign(data, secret)
                        res.send({
                            user: results[0],
                            token: authToken
                        })
                    } else {
                        res.status(400).send('Não é possível encontrar nenhuma conta que corresponda ao nome de usuário e senha fornecidos')
                    }
                }).catch((error) => { throw error })
        }
    })
     }).catch((error) => res.status(400).send(error))
},

router.post('/auth', (req, res) => {
    console.log(req)
    validate(req.body, {
        email: 'required|email',
        senha: 'required'
    }).then((value) => {
        db.query('SELECT * FROM candidato WHERE email = ? ', [value.email], (error, results) => {
            if (results.length === 0) {
                res.status(400).send('Cannot find any account that matches the given email and senha')
            } else {
                bcrypt.compare(value.senha, results[0].senha)
                    .then((match) => {
                        if (match) {
                            const secret = 'B18fbWIyeU1utFA31mzGaVyzjyL9ZnfP'
                            const data = { id: results[0].id }

                            delete results[0].senha

                            const authToken = jwt.sign(data, secret)

                            res.send({
                                user: results[0],
                                token: authToken
                            })
                        } else {
                            res.status(400).send('Cannot find any account that matches the given email and senha')
                        }
                    }).catch((error) => { throw error })
            }
        })
    }).catch((error) => res.status(400).send(error))

})

module.exports = router