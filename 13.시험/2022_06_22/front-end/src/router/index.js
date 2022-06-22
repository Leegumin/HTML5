import Vue from 'vue'
import VueRouter from 'vue-router'

// *router : 메뉴달기 비교) springboot의 controller와 유사
Vue.use(VueRouter)

const routes = [
  {
    path     : '/',
    alias    : '/home', //alias 값으로도 페이지 인식함
    name     : 'home',
    component: () => import('@/views/HomeView'),
  },
  {
    path     : '/customers',
    name     : 'customers',
    component: () => import('@/components/customer/CustomerList'),
  },
  {
    path     : '/customers/add',
    alias    : '/add-customers',
    name     : 'add-customers',
    component: () => import('@/components/customer/AddCustomer'),
  },
  {
    // /customers/:id, CustomerList에서 설정된 링크 "'/customers/' + customer.id" 형태에서 customer.id를 id(다른 이름도 가능함, ex - idx로 해도 작동하는거 확인됨)라는 이름의 매개변수로 사용하겠다.
    path     : '/customers/:id',
    alias    : '/edit-customers',
    name     : 'edit-customers',
    component: () => import('@/components/customer/EditCustomer'),
  },
  {
    path     : '/qna-boards',
    name     : 'qna-boards',
    component: () => import('@/components/FAQBoard/QnABoardList'),
  },
  {
    path     : '/qna-boards/add',
    alias    : '/add-qna-boards',
    name     : 'add-qna-boards',
    component: () => import('@/components/FAQBoard/AddQnABoard'),
  },
  {
    // /customers/:id, CustomerList에서 설정된 링크 "'/customers/' + customer.id" 형태에서 customer.id를 id(다른 이름도 가능함, ex - idx로 해도 작동하는거 확인됨)라는 이름의 매개변수로 사용하겠다.
    path     : '/qna-boards/:id',
    alias    : '/edit-qna-boards',
    name     : 'edit-qna-boards',
    component: () => import('@/components/FAQBoard/EditQnABoard'),
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
})

export default router
