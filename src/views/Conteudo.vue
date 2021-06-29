<template>
<div>
 <Navbaradmin/>
  <v-card>
    <v-card-title>
      <v-text-field
        v-model="search"
        append-icon="mdi-magnify"
        label="Pesquisar"
        single-line
        hide-details
      ></v-text-field>
    </v-card-title>
    <v-data-table
      :headers="headers"
      :items="desserts"
      :search="search"
    ></v-data-table>
  </v-card>
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
        search: '',
        headers: [
          { text: 'Nº', value: 'idcandidato' },
          {text: 'Nome Candidato',value: 'name',},
          { text: 'Escola de Aplicação', value: 'escolaaplicacao' },
          { text: 'Escalão', value: 'escalao' },
          { text: 'Estado Candidatura', value: 'estadocandidatura' },
          { text: 'Localidade', value: 'localidade' },
          { text: 'Nível de Ensino', value: 'Niveldensino' },
        ],
        desserts: [
          {
            name: 'Edson de Carvalho',
            idcandidato: 1,
            escolaaplicacao: 'Colégio Dom Bosco',
            escalao: '6º Escalão',
            estadocandidatura: 'Processando',
            localidade: 'Belas',
            Niveldensino: '1ºCiclo'
          },
          {
            name: 'Pedro Avelino',
            idcandidato: 2,
            escolaaplicacao: 'Escola São Francisco',
            escalao: '3º Escalão',
            estadocandidatura: 'Processando',
            localidade: 'Maianga',
            Niveldensino: '2ºCiclo'
          },
          {
            name: 'Nelson Matos',
            idcandidato: 3,
            escolaaplicacao: 'Colégio Dom Bosco',
            escalao: '4º Escalão',
            estadocandidatura: 'Processando',
            localidade: 'Belas',
            Niveldensino: '1ºCiclo'
          },
        ],
      }
    },
  }
</script>