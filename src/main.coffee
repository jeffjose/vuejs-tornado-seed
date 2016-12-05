import Vue from 'vue'
import VueRouter from 'vue-router'
import Vuex from 'vuex'
import App from './App'

Vue.use(VueRouter)
Vue.use(Vuex)

# Define routes below
#
import Home  from './components/Home.vue'
import Link1 from './components/Link1.vue'
import Link2 from './components/Link2.vue'
import Link3 from './components/Link3.vue'

routes = [
    path: '/'
    component: Home
  ,
    path: '/link1'
    component: Link1
  ,
    path: '/link2'
    component: Link2
  ,
    path: '/link3/:name'
    component: Link3

]

# Register the routes
#
router = new VueRouter
  routes:routes


# Kickstart the whole process
#
# - '#app' is from index.htm
#
app = new Vue(

  router     : router
  template   : '<App/>'
  components : {App}

  ).$mount('#app')
