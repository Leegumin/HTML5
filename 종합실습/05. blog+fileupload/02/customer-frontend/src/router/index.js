import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path     : '/',
    alias    : '/customers',
    name     : 'customers',
    component: () => import('@/components/CustomerList'),
  },
  {
    path     : '/add',
    alias    : '/add-customers',
    name     : 'add-customers',
    component: () => import('@/components/AddCustomer'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router
