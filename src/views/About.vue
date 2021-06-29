<template>
 <div>
      <Navbarpublico/>
      <Footer/>
      <h1> SOBRE NÓS </h1>
  </div>
</template>

<script>
  import Navbarpublico from '../components/Navbarpublico'
  import Footer from '../components/Footer.vue'

  export default {
    name: 'Publico',

    components: {
      Navbarpublico,
      Footer
    },
  }
</script>