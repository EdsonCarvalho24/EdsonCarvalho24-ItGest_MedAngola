const router = require('express').Router()
const db = require('../../db')

router.get('/', (_, res) => {
    // listar os candidatos que estão na BD
    db.query("select candidato.id_candidato, candidato.nome, candidato.telefone, candidato.data_nascimento,candidato.data_registro, candidato.email, municipio.nome as municipio, nivelacademico.nome as nivelacademico, genero.nome as genero,especialidade.nome as Especialidade, escolaformacao.nome as EscolaFormacao from medangola.candidato join medangola.municipio on municipio.id_municipio =  candidato.id_municipio join medangola.nivelacademico on nivelacademico.id_nivelacademico = candidato.id_nivelacademico join medangola.genero on genero.id_genero = candidato.id_genero join medangola.especialidade on especialidade.id_especialidade = candidato.id_especialidade join medangola.escolaformacao on escolaformacao.id_escolaformacao = candidato.id_escolaformacao order by candidato.nome", (error, results,) => {
        if (error) {
            throw error
        }
        res.send({
            data: results
        },
        );
    })
})

// router.post('/', (req, res) => {
//     const candidato = req.body
//     db.query('INSERT INTO candidato SET ?', [candidato], (error, results) => {
//         if (error) {
//             throw error
//         }
//         res.send(results[0])
//     });
// })

module.exports = router