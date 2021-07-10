<template>
  <div>
      <Navbarpublico/>
      <Footer/>
      <Home/>
  </div>
  
</template>

<script>
  import Navbarpublico from '../components/Navbarpublico'
  import Footer from '../components/Footer'
  import Home from '../components/Home'

  export default {
    name: 'Publico',

    components: {
      Navbarpublico,
      Footer,
      Home
    },
  }
</script>
