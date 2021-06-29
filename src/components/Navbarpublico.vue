<template>
    <nav>
        <v-app-bar color= cyan dark app> 
            <v-app-bar-nav-icon>

            </v-app-bar-nav-icon> 
            <v-toolbar-title class="text-uppercase">
                <span class="font-weight-light">MED-</span>
                <span>Angola</span>
            </v-toolbar-title>
            <v-spacer></v-spacer>
            <v-btn text to ="/" >
                <v-icon>home</v-icon>
                <span>Página Inicial</span>
            </v-btn>
            <v-btn text to ="/about">
                <v-icon>groups</v-icon>
                <span>Sobre Nós</span>
            </v-btn>
            <v-btn text to ="/vagas">
                <v-icon>school</v-icon>
                <span>Vagas</span> 
            </v-btn>
            <v-menu offset-y>
                <template v-slot:activator="{ on }">
                    <v-btn text v-on="on">
                        <v-icon left>login</v-icon>
                        <span>Login</span>
                    </v-btn>
                </template>
                <v-list flat>
                    <v-list-item v-for="link in links" :key="link.text" router :to="link.route" active-class="border">
                        <v-icon>{{link.icon}}</v-icon>
                        <v-list-item-title>{{link.text}}</v-list-item-title>
                    </v-list-item>
                </v-list>

            </v-menu>
        </v-app-bar>
    </nav>
</template>
<script>
export default{
    data:() => ({
        drawer:true,
        links:[
            {icon: 'lock', text:'Candidato', route:'/login' },
            {icon: 'lock', text:'Área Administrativa', route:'/loginadmin' }

        ]
    })
}

</script>

<style>
.border{
    border-left: 4px, solid cyan;
}
</style>