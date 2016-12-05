<template>
  <div id="app" class="container-fluid">

      <navbar></navbar>

      <!--Templates get injected below -->
      <router-view></router-view>

  </div>
</template>

<script lang="coffee">

Navbar = require './components/Navbar'

module.exports =

  name: 'app'
  components: {Navbar}

</script>

<style lang="less">

@import "static/bootstrap/app-customizations.less";

</style>
