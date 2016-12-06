<template>
    <nav class="navbar navbar-fixed-top navbar-full navbar-dark bg-inverse">
        <router-link class="navbar-brand" to="/">Vuejs + Tornado Seed</router-link>
        <ul class="nav navbar-nav">
            <li class="nav-item active">
                <router-link class="nav-link" to="/">Home</router-link>
            </li>
            <li class="nav-item">
                <router-link class="nav-link" to="/link1">Link 1</router-link>
            </li>
            <li class="nav-item">
                <router-link class="nav-link" to="/link2">Link 2</router-link>
            </li>
            <li class="nav-item">
                <router-link class="nav-link" to="/link3/foobar">Link (w/ params)</router-link>
            </li>
        </ul>
    </nav>
</template>

<script lang="coffee">

module.exports =
    name: 'navbar'

</script>

<style scoped lang="less">

@import "../assets/bootstrap/material-colors.less";

.navbar {

    box-shadow: 0px 2px 9px #888888;

    &.bg-inverse {
        background-color: @clr-blue !important;
    }
}

.nav-link {

    padding-bottom: 0px !important;
    transition: all ease-in-out 150ms;

    &:hover {
        border-bottom: 3px solid @clr-red;
        color: white !important;
    }

}

</style>
