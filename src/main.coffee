import Vue from 'vue'
import VueRouter from 'vue-router'
import Vuex from 'vuex'
import App from './App'

Vue.use(VueRouter)
Vue.use(Vuex)

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
