<template>
    <div>
        <Navbaradmin/>
        <v-container>
            <v-layout>
                <v-flex sm6 xs12 lg3>
                    <v-card class="ma-2">
                        <v-list-item>
                            <v-list-item-avatar title class="mt-5">
                                <v-sheet color="green" width="90" height="90" elevation="10">
                                    <v-avatar size="100">
                                        <v-img src="/image1.jpg"></v-img>
                                    </v-avatar>
                                </v-sheet>
                            </v-list-item-avatar>
                            <v-list-item-content>
                                <div class="overline text-right">Id</div>
                                <v-list-item-title class="headline mb-1 text-right">1</v-list-item-title>
                                <div><v-divider></v-divider></div>
                            </v-list-item-content>
                        </v-list-item>
                        <v-card-actions>
                            <v-icon text class="ma-2" >person</v-icon>
                            <div class="overline">Edson Carvalho</div>
                            <v-divider></v-divider>
                            <v-btn rounded color='green' dark app>Validar</v-btn>
                            <v-btn><v-icon text class="" >visibility</v-icon></v-btn> 
                        </v-card-actions>

                    </v-card>
                </v-flex>
            </v-layout>
        </v-container>
    </div>
</template>
<script>
import Navbaradmin from '../components/Navbaradmin.vue'

export default  {
      name: 'Publico',
    components: {
      Navbaradmin,
      
    },
}
</script>
