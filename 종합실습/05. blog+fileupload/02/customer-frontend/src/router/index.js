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
  {
    path     : '/customers/:id',
    alias    : '/edit-customers',
    name     : 'edit-customers',
    component: () => import('@/components/EditCustomer'),
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router
