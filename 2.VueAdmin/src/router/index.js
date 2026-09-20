	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import chelianglichang from '@/views/chelianglichang/list'
	import cheweixinxi from '@/views/cheweixinxi/list'
	import ruchangtingche from '@/views/ruchangtingche/list'
	import yonghu from '@/views/yonghu/list'
	import shequmingcheng from '@/views/shequmingcheng/list'
	import cheliangxinxi from '@/views/cheliangxinxi/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'
	import shequguanliyuan from '@/views/shequguanliyuan/list'
	import shequguanliyuanRegister from '@/views/shequguanliyuan/register'
	import shequguanliyuanCenter from '@/views/shequguanliyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shequguanliyuanCenter',
			name: '社区管理员个人中心',
			component: shequguanliyuanCenter
		}
		,{
			path: '/news',
			name: '通知公告',
			component: news
		}
		,{
			path: '/chelianglichang',
			name: '车辆离场',
			component: chelianglichang
		}
		,{
			path: '/cheweixinxi',
			name: '车位信息',
			component: cheweixinxi
		}
		,{
			path: '/ruchangtingche',
			name: '入场停车',
			component: ruchangtingche
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/shequmingcheng',
			name: '社区名称',
			component: shequmingcheng
		}
		,{
			path: '/cheliangxinxi',
			name: '车辆信息',
			component: cheliangxinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/shequguanliyuan',
			name: '社区管理员',
			component: shequguanliyuan
		}
		]
	},
	{
		path: '/shequguanliyuanRegister',
		name: '社区管理员注册',
		component: shequguanliyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
