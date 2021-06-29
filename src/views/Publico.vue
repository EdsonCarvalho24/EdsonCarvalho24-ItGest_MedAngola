<template>
  <div>
      <Navbarpublico/>
      <Footer/>
      <h1> Todas as informações acerca do Portal </h1>
  </div>
  
</template>

<script>
  import Navbarpublico from '../components/Navbarpublico'
  import Footer from '../components/Footer'

  export default {
    name: 'Publico',

    components: {
      Navbarpublico,
      Footer
    },
  }
</script>
