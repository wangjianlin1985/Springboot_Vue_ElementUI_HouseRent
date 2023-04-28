import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import news from '@/views/modules/news/list'
    import fangwuxinxi from '@/views/modules/fangwuxinxi/list'
    import zuhu from '@/views/modules/zuhu/list'
    import chuzuren from '@/views/modules/chuzuren/list'
    import liuyanbanguanli from '@/views/modules/liuyanbanguanli/list'
    import lunbotuguanli from '@/views/modules/lunbotuguanli/list'
    import hetongxinxi from '@/views/modules/hetongxinxi/list'
    import yuyuexinxi from '@/views/modules/yuyuexinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import fangwufenlei from '@/views/modules/fangwufenlei/list'

//2.配置路由   注意：名字
const routes = [
    {
        path: '/index', name:'index', component: Index, children: [{
            // 这里不设置值，是把main作为默认页面
            path: '/',
            name: 'home',
            component: Home
        },{
            path: '/updatePassword',
            name: 'updatePassword',
            component: UpdatePassword
        } ,{
            path: '/pay',
            name: 'pay',
            component: pay
        } ,{
            path: '/center',
            name: 'center',
            component: center
        } 
                    ,{
                path: '/news',
                name: 'news',
                component: news
            } 
                    ,{
                path: '/fangwuxinxi',
                name: 'fangwuxinxi',
                component: fangwuxinxi
            } 
                    ,{
                path: '/zuhu',
                name: 'zuhu',
                component: zuhu
            } 
                    ,{
                path: '/chuzuren',
                name: 'chuzuren',
                component: chuzuren
            } 
                    ,{
                path: '/liuyanbanguanli',
                name: 'liuyanbanguanli',
                component: liuyanbanguanli
            } 
                    ,{
                path: '/lunbotuguanli',
                name: 'lunbotuguanli',
                component: lunbotuguanli
            } 
                    ,{
                path: '/hetongxinxi',
                name: 'hetongxinxi',
                component: hetongxinxi
            } 
                    ,{
                path: '/yuyuexinxi',
                name: 'yuyuexinxi',
                component: yuyuexinxi
            } 
                    ,{
                path: '/storeup',
                name: 'storeup',
                component: storeup
            } 
                    ,{
                path: '/fangwufenlei',
                name: 'fangwufenlei',
                component: fangwufenlei
            } 
                ]
    },
    { path: '/adminexam', name: 'adminexam', component: adminexam },
    { path: '/login', name:'login', component: Login },
    { path: '/register', name:'register', component: register },
    { path: '/', redirect: '/index/' },      /*默认跳转路由*/
    { path: '*', component: NotFound }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',   /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;

