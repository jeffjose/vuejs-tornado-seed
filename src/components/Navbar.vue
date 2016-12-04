<template>
    <nav class="navbar navbar-fixed-top navbar-full navbar-dark bg-inverse">
        <a class="navbar-brand" href="#">Vuejs + Tornado Seed</a>
        <ul class="nav navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link 1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link 2</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link 3</a>
            </li>
        </ul>
    </nav>
</template>

<script lang="coffee">

module.exports =
    name: 'navbar'

</script>

<style scoped lang="less">

@import "../static/bootstrap/material-colors.less";

.navbar {
    box-shadow: 0px 2px 9px #888888;
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
