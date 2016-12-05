#
# Routes
#
#
import Home  from './components/Home.vue'
import Link1 from './components/Link1.vue'
import Link2 from './components/Link2.vue'
import Link3 from './components/Link3.vue'

module.exports =

  routes: [
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

