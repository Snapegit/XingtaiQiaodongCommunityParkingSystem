<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('chelianglichang','首页总数')">
				<el-card v-show="countTypeList.closechelianglichangCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆离场
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenchelianglichangCountType')" class="showIcons"
									:class="countTypeList.hiddenchelianglichangCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closechelianglichangCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenchelianglichangCountType">
							<div class="count_title">车辆离场总数</div>
							<div class="count_num">{{chelianglichangCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('chelianglichang','首页统计')">
				<el-card v-show="cardTypeList.closechelianglichangChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆离场
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchelianglichangChartType1')" class="showIcons"
									:class="cardTypeList.hiddenchelianglichangChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechelianglichangChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchelianglichangChartType1">
							<div id="chelianglichangshoufeijineEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chelianglichang','首页统计')">
				<el-card v-show="cardTypeList.closechelianglichangChartType2" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆离场
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchelianglichangChartType2')" class="showIcons"
									:class="cardTypeList.hiddenchelianglichangChartType2?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechelianglichangChartType2')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchelianglichangChartType2">
							<div id="chelianglichangshoufeijineEchart2" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chelianglichang','首页统计')">
				<el-card v-show="cardTypeList.closechelianglichangChartType3" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆离场
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchelianglichangChartType3')" class="showIcons"
									:class="cardTypeList.hiddenchelianglichangChartType3?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechelianglichangChartType3')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchelianglichangChartType3">
							<div id="chelianglichangshoufeijineEchart3" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chelianglichang','首页统计')">
				<el-card v-show="cardTypeList.closechelianglichangChartType4" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								车辆离场
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchelianglichangChartType4')" class="showIcons"
									:class="cardTypeList.hiddenchelianglichangChartType4?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechelianglichangChartType4')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchelianglichangChartType4">
							<div id="chelianglichangshoufeijineEchart4" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closechelianglichangCountType = true
		countTypeList.value.hiddenchelianglichangCountType = true
		if(btnAuth('chelianglichang','首页总数')){
			getchelianglichangCount()
		}
	}
	const chelianglichangCount = ref(0)
	const getchelianglichangCount = () => {
		context?.$http({
			url:'chelianglichang/count',
			method: 'get'
		}).then(res=>{
			chelianglichangCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closechelianglichangChartType1: true,
		hiddenchelianglichangChartType1: true,
		closechelianglichangChartType2: true,
		hiddenchelianglichangChartType2: true,
		closechelianglichangChartType3: true,
		hiddenchelianglichangChartType3: true,
		closechelianglichangChartType4: true,
		hiddenchelianglichangChartType4: true,
	})
	const getCardList = () => {
		if(btnAuth('chelianglichang','首页统计')){
			getchelianglichangChart1()
		}
		if(btnAuth('chelianglichang','首页统计')){
			getchelianglichangChart2()
		}
		if(btnAuth('chelianglichang','首页统计')){
			getchelianglichangChart3()
		}
		if(btnAuth('chelianglichang','首页统计')){
			getchelianglichangChart4()
		}
	}
	const getchelianglichangChart1 = () => {
		nextTick(()=>{
			var shoufeijineEchart1 = echarts.init(document.getElementById("chelianglichangshoufeijineEchart1"),'macarons');
			context?.$http({
				url: `chelianglichang/value/chuchangshijian/shoufeijine/日`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].chuchangshijian);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].chuchangshijian
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '日收费',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				shoufeijineEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				shoufeijineEchart1.setOption(option);
				//根据窗口的大小变动图表
				shoufeijineEchart1.resize();
			})
		})
	}
	const getchelianglichangChart2 = () => {
		nextTick(()=>{
			var shoufeijineEchart2 = echarts.init(document.getElementById("chelianglichangshoufeijineEchart2"),'macarons');
			context?.$http({
				url: `chelianglichang/value/chuchangshijian/shoufeijine/月`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].chuchangshijian);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].chuchangshijian
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '月收费',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				// 使用刚指定的配置项和数据显示图表。
				shoufeijineEchart2.clear()
				shoufeijineEchart2.setOption(option);
				//根据窗口的大小变动图表
				shoufeijineEchart2.resize();
			})
		})
	}
	const getchelianglichangChart3 = () => {
		nextTick(()=>{
        //  shoufeijine
			var shoufeijineEchart3 = echarts.init(document.getElementById("chelianglichangshoufeijineEchart3"),'macarons');
			context?.$http({
				url: `chelianglichang/value/chuchangshijian/shoufeijine/年`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].chuchangshijian);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].chuchangshijian
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '年收费',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				// 使用刚指定的配置项和数据显示图表。
				shoufeijineEchart3.clear()
				shoufeijineEchart3.setOption(option);
				//根据窗口的大小变动图表
				shoufeijineEchart3.resize();
			})
		})
	}
	const getchelianglichangChart4 = () => {
		nextTick(()=>{
        //  shoufeijine
			var shoufeijineEchart4 = echarts.init(document.getElementById("chelianglichangshoufeijineEchart4"),'macarons');
			context?.$http({
				url: `chelianglichang/value/shequmingcheng/shoufeijine`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].shequmingcheng);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].shequmingcheng
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '社区收费统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				// 使用刚指定的配置项和数据显示图表。
				shoufeijineEchart4.clear()
				shoufeijineEchart4.setOption(option);
				//根据窗口的大小变动图表
				shoufeijineEchart4.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 30px;
		justify-content: center;
		align-items: center;
		height: 50%;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				padding: 7px 20px;
				background: #62B8FF;
				width: 100%;
				border-width: 0;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #fff;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #fff;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px 20px 60px;
					flex-direction: column-reverse;
					display: flex;
					// 总数标题
					.count_title{
						color: #3753A2;
						font-weight: bold;
						font-size: 16px;
						line-height: 1;
						order: 1;
					}
					// 总数数字
					.count_num{
						color: #3753A2;
						font-weight: bold;
						font-size: 50px;
						line-height: 1.5;
						order: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 20px;
		background: url(http://clfile.zggen.cn/20240203/09a98f4852104a599055d47953ef0a23.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #e4e7ed;
			border-radius: 10px;
			box-shadow: none;
			margin: 0 10px 10px;
			flex: 1;
			background: linear-gradient(90deg, #E3EDF9 0%, #D9E6F7 100%);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid #e4e7ed;
				padding: 7px 20px;
				background: #62B8FF;
				width: 100%;
				border-width: 0;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #fff;
						font-weight: bold;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #fff;
							font-weight: bold;
							font-size: 12px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
