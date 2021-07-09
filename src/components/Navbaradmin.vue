<template>
    <nav>
        <v-app-bar color="cyan" dark app>
            <v-app-bar-nav-icon @click.stop="drawer = !drawer">
            </v-app-bar-nav-icon>
        <v-toolbar-title class="text-uppercase">
            <span class="font-weight-light">MED-</span>
            <span>ANGOLA</span>
        </v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn text to="/login" >
            <span>Sair</span>
            <v-icon>logout</v-icon>
        </v-btn>
        </v-app-bar>
        <v-navigation-drawer v-model="drawer" dark app class=" cyan">
            <v-layout column align-center>
                <v-flex class="mt-5">
                    <v-avatar size="100">
                        <v-img src="/image1.jpg"></v-img>
                    </v-avatar>
                    <p class="white--text subheading mt-1 text-center">Username</p>
                </v-flex>
            </v-layout>
            <v-list flat>
                <v-list-item v-for="link in links" :key="link.text" router :to="link.route" active-class="border">
                    <v-list-item-action>
                        <v-icon>{{link.icon}}</v-icon>
                    </v-list-item-action>
                    <v-list-item-content>
                        <v-list-item-title>{{link.text}}</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
            </v-list>
        </v-navigation-drawer>
    </nav>
</template>
<script>
export default{
    data: () => ({
        drawer: true,
        links:[
            {icon: 'home',   text:'Home', route:'/dashboard'},
            {icon: 'view_list',   text:'Lista de Candidatos', route:'/candidatos'},
            {icon: 'analytics', text:'Validar Candidaturas', route:'/validar'},
            {icon: 'leaderboard', text:'Outros', route:'#'}
        ]
    })
}
</script>
<stile>
.border{
    border-left: 4px solid #0ba518
}
</stile>