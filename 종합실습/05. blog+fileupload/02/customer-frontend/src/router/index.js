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
    // 1. /customers/:매개변수, 이 형태를 띄는 주소에서 입력된 매개변수와
    // 매칭되는 매개변수를 찾아 주소로 가져옴
    // 2. /customers/:id, CustomerList에서 쏴준 "'/customers/' + customer.id" 형태에서 customer.id를 id(다른 이름도 가능함, ex - idx로 해도 작동하는거 확인됨)라는 이름의 매개변수로 사용하겠다.
    path     : '/customers/:id',
    alias    : '/edit-customers',
    name     : 'edit-customers',
    component: () => import('@/components/EditCustomer'),
  },
  {
    // /customers/:매개변수, 이 형태를 띄는 주소에서 입력된 매개변수와
    // 매칭되는 매개변수를 찾아 주소로 가져옴
    path     : '/customer/:phone',
    alias    : '/testPage',
    name     : 'testPage',
    component: () => import('@/components/testPage.vue'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router
