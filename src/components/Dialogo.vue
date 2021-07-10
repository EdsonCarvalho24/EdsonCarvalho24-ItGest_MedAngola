<template>
  <div class="text-center">
    <v-dialog v-model="dialog" width="500">
      <template v-slot:activator="{ on, attrs }">
        <v-btn color="cyan" dark v-bind="attrs" v-on="on">
          DOCUMENTOS NECESSÁRIOS
        </v-btn>
      </template>

      <v-card>
        <v-card-title class="text-h5 grey lighten-2">
          DOCUMENTOS NECESSÁRIOS
        </v-card-title>

        <v-card-text>
          *Requerimento dirigido à Ministra da Educação. <br> 
          *Cópia do Certificado de Habilitações Literárias.<br>
          *Uma (1) fotografia tipo-passe com fundo branco.<br>
          *Certificado da situação militar para o indivíduo do sexo masculino.<br>
          *Declaração do INAAREES para quem estudou fora do país.<br>
          *Comprovativo da instituição de direito para os candidatos com condição especial.<br> 
          *Cópia Bilhete de Identidade.
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