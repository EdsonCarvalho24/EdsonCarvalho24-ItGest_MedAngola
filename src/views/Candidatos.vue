<template>
  <div>
    <Navbaradmin />
    <v-simple-table>
      <template v-slot:default>
        <thead>
          <tr>
            <th class="text-left">Id</th>
            <th class="text-left">Nome</th>
            <th class="text-left">Telefone</th>
            <th class="text-left">Data Nascimento</th>
            <th class="text-left">Data Registro</th>
            <th class="text-left">Email</th>
            <th class="text-left">Municipio</th>
            <th class="text-left">Nivel Académico</th>
            <th class="text-left">Genero</th>
            <th class="text-left">Especialidade</th>
            <th class="text-left">Escola de formação</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="candidato in candidatos" :key="candidato.id_candidato">
            <td>{{ candidato.id_candidato }}</td>
            <td>{{ candidato.nome }}</td>
            <td>{{ candidato.telefone }}</td>
            <td>{{ formatDate (candidato.data_nascimento) }}</td>
            <td>{{ formatDater (candidato.data_registro) }}</td>
            <td>{{ candidato.email }}</td>
            <td>{{ candidato.municipio }}</td>
            <td>{{ candidato.nivelacademico }}</td>
            <td>{{ candidato.genero }}</td>
            <td>{{ candidato.especialidade }}</td>
            <td>{{ candidato.escola_formacao }}</td>
            
          </tr>
        </tbody>
      </template>
    </v-simple-table>
  </div>
</template>
<script>
import Navbaradmin from "../components/Navbaradmin";
import moment from 'moment'
export default {
  name: "Publico",
  components: {
    Navbaradmin,
  },
  data() {
    return {
      candidato: {
        id_candidato: null,
        nome: "",
        telefone: "",
        data_nascimento: "",
        data_registro: "",
        email: "",
        id_municipio: "",
        id_nivelacademico: "",
        id_genero: "",
        id_especialidade: "",
        id_escolaformacao: "",
      },
      candidatos: [],
    };
  },

  methods: {
    getCandidatos() {
      this.axios.get("http://localhost:3000/candidatos").then((res) => {
        this.candidatos = res.data.data;
      });
    },
    formatDater(date){
      var splitedDate = date.split('.')[0]

      return moment (splitedDate, 'YYYY-MM-DDTHH:mm:ss').format('DD/MM/YYYY HH:mm:ss')
    },
    formatDate(date){
      var splitedDate = date.split('.')[0]

      return moment (splitedDate, 'YYYY-MM-DDTHH:mm:ss').format('DD/MM/YYYY')
    }
  },
  created() {
    this.getCandidatos();
  },
};
</script>