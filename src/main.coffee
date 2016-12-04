import Vue from 'vue'
import VueRouter from 'vue-router'
import Vuex from 'vuex'
import App from './App'

# eslint-disable no-new
new Vue
  el: '#app'
  template: '<App/>'
  components: { App }

Vue.use(VueRouter)
Vue.use(Vuex)
