
<template>
	<div>
		<div class="app-contain">
			<el-form class="userinfo_form" ref="userinfoFormRef" :model="form" label-width="$template2.back.add.form.base.labelWidth">
				<el-row>
					<el-col :span="24">
						<el-form-item label="账号" prop="zhanghao">
							<el-input class="list_inp" v-model="user.zhanghao" readonly placeholder="账号" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="社区名称" prop="shequmingcheng">
							<el-select 
								class="list_sel" 
								v-model="user.shequmingcheng" 
								placeholder="请选择社区名称"
								>
								<el-option v-for="item in shequguanliyuanshequmingchengLists" :label="item" :value="item"></el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<span class="userinfo_form_btn_box">
						<el-button class='userinfo_confirm' type="primary" @click="onSubmit">保存</el-button>
					</span>
				</el-row>
			</el-form>
		</div>
	</div>
</template>

<script setup>
	import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/toolUtil";
	import {
		reactive,
		ref,
		getCurrentInstance
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const tableName = ref('shequguanliyuan')
	const user = ref({})
	const shequguanliyuanshequmingchengLists = ref([])
	const init = () => {
		context?.$http({
			url:`option/shequmingcheng/shequmingcheng`,
			method:'get'
		}).then(res=>{
			shequguanliyuanshequmingchengLists.value = res.data.data
		})
	}
	const onSubmit = () => {
		context?.$http({
			url: `${tableName.value}/update`,
			method: 'post',
			data: user.value
		}).then(res => {
			context?.$toolUtil.message('修改成功','success')
		})

	}
	const getInfo = () => {
		context?.$http({
			url: `${tableName.value}/session`,
			method: 'get'
		}).then(res => {
			user.value = res.data.data
			init()
		})
	}
	getInfo()
</script>

<style lang="scss" scoped>
	// 表单
	.userinfo_form {
		border-radius: 6px;
		padding: 30px;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			// 内容盒子
			.el-form-item__content{
				display: flex;
				width: calc(100% - 90px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
			}
			// 输入框
			.list_inp {
				border: 2px solid #5FB7FF;
				border-radius: 20px;
				padding: 0 10px;
				background: #fff;
				width: 100%;
				line-height: 36px;
				box-sizing: border-box;
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
			//下拉框样式
			.list_sel {
				border: 2px solid #5FB7FF;
				border-radius: 20px;
				padding: 0 10px;
				background: #fff;
				width: 100%;
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
						}
						.is-focus {
							box-shadow: none !important;
						}
					}
				}
			}

		}
		// 按钮盒子
		.userinfo_form_btn_box {
			display: flex;
			width: 100%;
			justify-content: center;
			align-items: center;
			// 确定按钮
			.userinfo_confirm {
				border: 0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 24px;
				box-shadow: inset 0px 4px 10px 0px rgba(147,147,147,0.302);
				outline: 4px solid #EAF5FF;
				margin: 0 20px;
				color: #2C2C2C;
				background: #96C6EE;
				width: auto;
				font-size: 14px;
				height: 40px;
			}
			// 确定按钮-悬浮
			.userinfo_confirm:hover {
				background: rgba(150, 198, 238, 0.5);
				font-size: 16px;
			}
		}
	}
</style>
