<template>
    <div>
        <h1>Link (w/ params)</h1>

        {{$route.params}}

    </div>
</template>

<script lang="coffee">

module.exports =
  name: 'link3'

</script>

<style scoped lang="less">

h1 {
    margin-top: 70px;
}

</style>
