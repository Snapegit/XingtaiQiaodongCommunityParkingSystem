import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import cheweixinxiList from '@/views/pages/cheweixinxi/list'
import cheweixinxiDetail from '@/views/pages/cheweixinxi/formModel'
import cheweixinxiAdd from '@/views/pages/cheweixinxi/formAdd'
import ruchangtingcheList from '@/views/pages/ruchangtingche/list'
import ruchangtingcheDetail from '@/views/pages/ruchangtingche/formModel'
import ruchangtingcheAdd from '@/views/pages/ruchangtingche/formAdd'
import chelianglichangList from '@/views/pages/chelianglichang/list'
import chelianglichangDetail from '@/views/pages/chelianglichang/formModel'
import chelianglichangAdd from '@/views/pages/chelianglichang/formAdd'
import cheliangxinxiList from '@/views/pages/cheliangxinxi/list'
import cheliangxinxiDetail from '@/views/pages/cheliangxinxi/formModel'
import cheliangxinxiAdd from '@/views/pages/cheliangxinxi/formAdd'
import shequmingchengList from '@/views/pages/shequmingcheng/list'
import shequmingchengDetail from '@/views/pages/shequmingcheng/formModel'
import shequmingchengAdd from '@/views/pages/shequmingcheng/formAdd'
import shequguanliyuanList from '@/views/pages/shequguanliyuan/list'
import shequguanliyuanDetail from '@/views/pages/shequguanliyuan/formModel'
import shequguanliyuanAdd from '@/views/pages/shequguanliyuan/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'cheweixinxiList',
			component: cheweixinxiList
		}, {
			path: 'cheweixinxiDetail',
			component: cheweixinxiDetail
		}, {
			path: 'cheweixinxiAdd',
			component: cheweixinxiAdd
		}
		, {
			path: 'ruchangtingcheList',
			component: ruchangtingcheList
		}, {
			path: 'ruchangtingcheDetail',
			component: ruchangtingcheDetail
		}, {
			path: 'ruchangtingcheAdd',
			component: ruchangtingcheAdd
		}
		, {
			path: 'chelianglichangList',
			component: chelianglichangList
		}, {
			path: 'chelianglichangDetail',
			component: chelianglichangDetail
		}, {
			path: 'chelianglichangAdd',
			component: chelianglichangAdd
		}
		, {
			path: 'cheliangxinxiList',
			component: cheliangxinxiList
		}, {
			path: 'cheliangxinxiDetail',
			component: cheliangxinxiDetail
		}, {
			path: 'cheliangxinxiAdd',
			component: cheliangxinxiAdd
		}
		, {
			path: 'shequmingchengList',
			component: shequmingchengList
		}, {
			path: 'shequmingchengDetail',
			component: shequmingchengDetail
		}, {
			path: 'shequmingchengAdd',
			component: shequmingchengAdd
		}
		, {
			path: 'shequguanliyuanList',
			component: shequguanliyuanList
		}, {
			path: 'shequguanliyuanDetail',
			component: shequguanliyuanDetail
		}, {
			path: 'shequguanliyuanAdd',
			component: shequguanliyuanAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
