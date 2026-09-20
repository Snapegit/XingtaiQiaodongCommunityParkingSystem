const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '新闻资讯管理',
					icon: 'icon-common1',
					child:[
						{
							name:'通知公告',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '车位信息管理',
					icon: 'icon-common3',
					child:[
						{
							name:'车位信息',
							url:'/index/cheweixinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "邢台市桥东区社区停车信息管理系统"
        } 
    }
}
export default config
