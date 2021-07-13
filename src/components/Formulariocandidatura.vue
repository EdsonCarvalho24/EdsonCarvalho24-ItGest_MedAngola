<template>
        <v-row justify="center">
            <v-dialog v-model="dialog" persistent max-width="800px">
                <template v-slot:activator="{on}">
                    <v-btn outlined color="" dark v-on="on">Efectuar Candidatura </v-btn>
                </template>
                <v-card>
                    <v-card-title>
                        <span class="headline">Efectuar Candidatura</span>
                    </v-card-title>
                    <v-form class="px-3" ref="form">
                        <v-card-text>
                            <v-select
                              v-model="escoladeaplicacao"
                              :items="escoladeaplicacao"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Escola de Aplicacao"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="niveldeensino"
                              :items="niveldeensino"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Nível de Ensino"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                            <v-select
                              v-model="escalão"
                              :items="escalão"
                              item-value="id"
                              item-text="nome"
                              color="cyan"
                              label="Escalão"
                              prepend-icon="school"
                              required
                            >
                            </v-select>
                        </v-card-text>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn color="blue darken-1" text  @click="dialog = drop">Fechar</v-btn>
                            <v-btn class="mr-4" type="submit" > Submeter </v-btn>
                        </v-card-actions>
                    </v-form>
                </v-card>
            </v-dialog>
        </v-row>
</template>
<script>
export default{
    date: ({
       
    }),
    methods: {
        },
       
    computed: {
        
    },
    watch:{
        
    }
}
</script>