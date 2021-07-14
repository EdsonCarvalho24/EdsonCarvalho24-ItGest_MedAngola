const router = require('express').Router()
const { validate } = require('indicative/validator')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
//const { sanitize } = require('indicative/sanitizer')
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

//login

router.post('/login', (req, res) => {
    console.log(req)
    validate(req.body, {
        email: 'required|email',
        senha: 'required|min: 6'
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

                            res.send(
                                {
                                    user: results[0],
                                    token: authToken
                                })
                        } else {
                            res.status(400).send('Cannot find any account that matches the given email and senha')
                        }
                    }).catch((error) => { throw error })
            }
        })
    }).catch((error) => res.status(401).send(error))

})


router.post('/restore-auth', (req, res) => {
    console.log(req)

    const authorization = req.header('Authorization')
    const secret = 'B18fbWIyeU1utFA31mzGaVyzjyL9ZnfP'

    const {id} = jwt.verify(authorization, secret)

    db.query('SELECT * FROM candidato WHERE id_candidato = ? ', [id], (error, results) => {
        res.send(
            {
                user: results[0],
                code: 200
            })
    })
})

module.exports = router