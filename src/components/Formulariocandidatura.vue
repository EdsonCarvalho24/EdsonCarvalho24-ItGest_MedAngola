<template>
        <v-row justify="center">
            <v-dialog v-model="dialog" persistent max-width="800px">
                <template v-slot:activator="{on}">
                    <v-btn outlined color="black" dark v-on="on">Nova</v-btn>
                </template>
                <v-card>
                    <v-card-title>
                        <span class="headline">Efectuar Candidatura</span>
                    </v-card-title>
                    <v-form class="px-3" ref="form">
                        <v-card-text>
                            <v-text-field label="Nome Completo" v-model="title" prepend-icon=""></v-text-field>
                            <v-select :items="items" label="Escola de Aplicação"></v-select>
                            <v-select :items="items" label="Nível de Ensino"></v-select>
                            <v-select :items="items" label="Escalão"></v-select>
                            <input type="date" placeholder="YYYY/MM/DD"/>
                            <v-text-field label="Escola" v-model="title" prepend-icon=""></v-text-field>
                        </v-card-text>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn color="blue darken-1" text @click="dialog= false">Close</v-btn>
                            <v-btn color="green" text outlined @click="submit">Save</v-btn>
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