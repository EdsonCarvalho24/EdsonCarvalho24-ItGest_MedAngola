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

router.post('/', (req, res)=>{
    const candidato = req.body
    db.query('INSERT INTO candidato SET ?',[candidato], (error, results)=>{
        if(error){
            throw error
        }
        res.send(results[0])
    });
})

module.exports = router