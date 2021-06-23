<template>
    <nav>
        <v-app-bar color= #90caf9 dark app> 
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
            <v-btn text to ="/login">
                <v-icon>login</v-icon>
                <span>Entrar</span>
                
                
            </v-btn>
        </v-app-bar>
    </nav>
</template>
<script>

</script>

<style>
.border{
    margin-right: 2px;
}
</style>