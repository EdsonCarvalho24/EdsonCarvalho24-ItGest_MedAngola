<template>
  <div>
    <Navbarpublico />
    <Footer />
    <Home />
    <br /><br /><br />
    <Dialogo /> <br />
    <Dialogo1 /> 
  
  </div>
</template>

<script>
import Navbarpublico from "../components/Navbarpublico";
import Footer from "../components/Footer";
import Home from "../components/Home";
import Dialogo from "../components/Dialogo";
import Dialogo1 from "../components/Dialogo1";


export default {
  name: "Publico",

  components: {
    Navbarpublico,
    Footer,
    Home,
    Dialogo,
    Dialogo1,
    
  },
};
</script>


