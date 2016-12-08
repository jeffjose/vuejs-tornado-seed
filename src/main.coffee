import Vue from 'vue'
import VueRouter from 'vue-router'
import Vuex from 'vuex'
import App from './App'
import VueMdl from 'vue-mdl'

require 'assets/material-design-lite.scss'

Vue.use(VueRouter)
Vue.use(Vuex)
Vue.use(VueMdl)

#
# Register the routes
#
#
import {routes} from './routes'

router = new VueRouter
  routes:routes

#
# Kickstart the whole process
#
# - '#app' is from index.htm
#
app = new Vue(

  router     : router
  template   : '<App/>'
  components : {App}

  ).$mount('#app')
