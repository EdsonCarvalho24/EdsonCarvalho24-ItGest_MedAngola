<template>
  <div class="text-center">
    <v-dialog v-model="dialog" width="500">
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="cyan" dark v-bind="attrs" v-on="on">
          Requisitos Para Candidatura
        </v-btn>
      </template>

      <v-card>
        <v-card-title class="text-h5 grey lighten-2">
          Requisitos Para Candidatura
        </v-card-title>
        <v-card-text>
          1. Nacionalidade angolana. 
          2. Idade compreendida entre 18 a 35 anos,
          salvo os casos previstos no Decreto n.º 6/08, de 10 de Abril,
          prorrogado pelo Decreto Presidencial n.º 88/19, de 21 de Março. 
          3.Habilitações literárias:
           a) Professor do Ensino Primário: Os candidatos habilitados com o Curso de Formação de Professores,
          efectuado nas Escolas de Magistério e licenciatura em Pedagogia
          (Ciências da Educação); 
          b) Professor do I Ciclo do Ensino Secundário:
          Os candidatos habilitados com o Curso de Formação de Professores,
          efectuado nas Escolas de Magistério (IMNEs) e Ensino Secundário
          Técnico Professor do Ensino Médio Profissional: Os candidatos,
          possuidores de qualificações específicas para a disciplina técnica a
          que se candidatam; 
          c) Professor do II Ciclo do Ensino Secundário: Os
          candidatos habilitados com o Curso de Formação de Professores,
          efectuado naEscola Superior Pedagógica, (ISCED) e Ensino Superior
          noutras áreas de saber: os candidatos, possuidores de qualificações
          específicas para a disciplina técnica a que se candidatam; 
          d) Técnico
          Médio, Bacharelato, Licenciatura, Mestre e Doutor, com formação em
          artes visuais plásticas, dança, teatro, cinema e música. Observação:
          Somente para a província de Luanda.
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="primary" text @click="dialog = false"> Entendi </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  data() {
    return {
      dialog: false,
    };
  },
};
</script>