<template>
<div>
 <Navbaradmin/>
  <v-simple-table>
    <template v-slot:default>
      <thead>
        <tr>
          <th class="text-left">
            Id
          </th>
          <th class="text-left">
            Nome
          </th>
           <th class="text-left">
             Telefone
          </th>
           <th class="text-left">
            Data Nascimento
          </th>
           <th class="text-left">
            Data Registro
          </th>
          <th class="text-left">
            Email
          </th>
          <th class="text-left">
           Senha
          </th>
          <th class="text-left">
           Municipio
          </th>
          <th class="text-left">
           Nivel Académico
          </th>
          <th class="text-left">
           Genero
          </th>
          <th class="text-left">
           Escola de formação
          </th>
        </tr>
      </thead>
      <tbody>
        <tr
          v-for="candidato in candidatos"
          :key="candidato.id_candidato"
        >
          <td>{{ candidato.id_candidato }}</td>
          <td>{{ candidato.nome }}</td>
          <td>{{ candidato.telefone }}</td>
          <td>{{ candidato.data_nascimento }}</td>
          <td>{{ candidato.data_registro }}</td>
          <td>{{ candidato.email }}</td>
          <td>{{ candidato.senha }}</td>
          <td>{{ candidato.id_municipio }}</td>
          <td>{{ candidato.id_nivelacademico }}</td>
          <td>{{ candidato.id_genero }}</td>
          <td>{{ candidato.id_especialidade }}</td>
          <td>{{ candidato.id_escolaformacao }}</td>
        </tr>
      </tbody>
    </template>
  </v-simple-table>
  </div>
</template>
<script>
import Navbaradmin from '../components/Navbaradmin'
  export default {
      name: 'Publico',
    components: {
      Navbaradmin,
      
    },
    data () {
      return {
        candidato: {
          id_candidato: null,
            nome: '',
            telefone: '',
            data_nascimento: '',
            data_registro: '',
            email: '',
            senha: '',
            id_municipio: '',
            id_nivelacademico: '',
            id_genero: '',
            id_especialidade: '',
            id_escolaformacao: ''
        },
        candidatos:[]
        
      }
    },
    listarCandidatos() {
      this.axios.get("http://localhost:3000/candidatos").then((response) => {
        this.candidatos = response.data.data;
      });
    },
  }
</script>