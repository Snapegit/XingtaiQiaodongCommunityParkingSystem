<template>
	<div>
		<div class="register_view">
			<div class="outTitle_view">
				<div class="outTilte">{{projectName}}注册</div>
			</div>
			<el-form :model="registerForm" class="register_form">
				<div class="list_item">
					<div class="list_label">账号：</div>
					<el-input class="list_inp"
						 v-model="registerForm.zhanghao" 
						 placeholder="请输入账号"
						 type="text"
						/>
				</div>
				<div class="list_item">
					<div class="list_label">密码：</div>
					<el-input class="list_inp"
						 v-model="registerForm.mima" 
						 placeholder="请输入密码"
						 type="password"
						 />
				</div>
				<div class="list_item">
					<div class="list_label">确认密码：</div>
					<el-input class="list_inp" v-model="registerForm.mima2" type="password" placeholder="请输入确认密码" />
				</div>
				<div class="list_item">
					<div class="list_label">社区名称：</div>
					<el-select 
						class="list_sel"
						v-model="registerForm.shequmingcheng" 
						placeholder="请选择社区名称"
						>
						<el-option v-for="item in shequguanliyuanshequmingchengLists" :label="item" :value="item"></el-option>
					</el-select>
				</div>

				<div class="list_btn">
					<el-button class="register" type="success" @click="handleRegister">注册</el-button>
					<div class="r-login" @click="close">已有账号，直接登录</div>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context?.$project.projectName
	//获取注册类型
	import { useRoute } from 'vue-router';
	const route = useRoute()
	const tableName = ref('shequguanliyuan')
	
	//公共方法
	const getUUID=()=> {
		return new Date().getTime();
	}
	const registerForm = ref({
        shequmingcheng: '',
	})
	const shequguanliyuanshequmingchengLists = ref([])
	const init=()=>{
		context?.$http({
			url:`option/shequmingcheng/shequmingcheng`,
			method:'get'
		}).then(res=>{
			shequguanliyuanshequmingchengLists.value = res.data.data
		})
	}
	// 多级联动参数
	//注册按钮
	const handleRegister = () => {
		let url = tableName.value +"/register";
		if(registerForm.value.mima!=registerForm.value.mima2){
			context?.$toolUtil.message('两次密码输入不一致','error')
			return false
		}
		
		context?.$http({
			url:url,
			method:'post',
			data:registerForm.value
		}).then(res=>{
			context?.$toolUtil.message('注册成功','success', obj=>{
				context?.$router.push({
					path: "/login"
				});
			})
		})
	}
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
	init()
</script>
<style lang="scss" scoped>
	
	.register_view {
		background-repeat: no-repeat;
		background-size: cover !important;
		background: url(http://clfile.zggen.cn/20240318/cb621f6084bf47a280c5ab08f1809c0f.png);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 标题盒子
		.outTitle_view {
			margin: -25px 0 0;
			top: 50%;
			left: 0;
			width: 29%;
			line-height: 50px;
			position: fixed;
			text-align: center;
			height: 50px;
			.outTilte {
				color: #1296FE;
				font-weight: bold;
				letter-spacing: 6px;
				font-size: 48px;
			}
		}
		// 表单盒子
		.register_form {
			border-radius: 10px;
			padding: 30px 60px;
			margin: 0 0 0 100px;
			background: none;
			display: flex;
			width: 600px;
			justify-content: center;
			flex-wrap: wrap;
		}
		// item盒子
		.list_item {
			margin: 10px 0;
			display: flex;
			width: 100%;
			justify-content: flex-start;
			align-items: center;
			// label
			.list_label {
				color: #000;
				width: 90px;
				font-size: 14px;
				box-sizing: border-box;
				text-align: center;
			}
			// 输入框
			:deep(.list_inp) {
				border-radius: 20px;
				padding: 0 10px;
				background: #fff;
				width: calc(100% - 90px);
				border-color: #5FB7FF;
				outline-offset: 4px;
				border-width: 2px;
				line-height: 36px;
				box-sizing: border-box;
				border-style: solid;
				height: 36px;
				//去掉默认样式
				.el-input__wrapper{
					border: none;
					box-shadow: none;
					background: none;
					border-radius: 0;
					height: 100%;
					padding: 0;
				}
				.is-focus {
					box-shadow: none !important;
				}
			}
		}
		//下拉框样式
		:deep(.list_sel) {
			border: 2px solid #5FB7FF;
			border-radius: 20px;
			padding: 0 10px;
			background: #fff;
			width: calc(100% - 90px);
			line-height: 36px;
			box-sizing: border-box;
			//去掉默认样式
			.select-trigger{
				height: 100%;
				.el-input{
					height: 100%;
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
			}
		}
		//按钮盒子
		.list_btn {
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			justify-content: center;
			align-items: center;
			flex-wrap: wrap;
			//注册按钮
			.register {
					border: none;
					border-radius: 0;
					color: #fff;
					background: linear-gradient(90deg, #FB843D 0%, #9EC8EA 0%, #5DB6FF 100%);
					width: 80%;
					font-size: 20px;
					height: 40px;
			}
			//注册按钮悬浮样式
			.register:hover {
				border: none;
				border-radius: 0;
				background: linear-gradient(270deg, #FB843D 0%, #9EC8EA 0%, #5DB6FF 100%);
				width: 80%;
				font-size: 20px;
				height: 40px;
			}
			//已有账号
			.r-login {
				cursor: pointer;
				padding: 10px 0 0;
				color: #000;
				width: 100%;
				font-size: 14px;
				text-align: center;
			}
		}
	}
</style>