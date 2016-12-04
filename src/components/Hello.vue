<template>
  <div>
      <button class="btn btn-primary">testing</button>
      {{msg}}
  </div>
</template>

<script lang="coffee">

module.exports =
  name: 'hello'
  data: ->
    msg: 'Welcome to Your Vue.js App'

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="less">
h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
