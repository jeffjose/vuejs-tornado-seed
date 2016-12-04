<template>
  <div id="app" class="container-fluid">
      <navbar></navbar>
  </div>
</template>

<script lang="coffee">

Navbar = require './components/Navbar'

module.exports =

  name: 'app'
  components: {Navbar}

</script>

<style lang="less">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
}
</style>
