<template>
  <div>
    <img class="bg" src="@/assets/img/bg.jpg">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" class="login-form">
      <h1 class="h1">房屋租赁注册</h1>
                              <el-form-item v-if="tableName=='zuhu'" label="用户名" prop="zuhuyonghuming">
        <el-input v-model="ruleForm.yonghuming" placeholder="用户名"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='zuhu'" label="密码" prop="zuhumima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='zuhu'" label="租户姓名" prop="zuhuzuhuxingming">
        <el-input v-model="ruleForm.zuhuxingming" placeholder="租户姓名"></el-input>
      </el-form-item>
                                                            <el-form-item v-if="tableName=='zuhu'" label="身份证" prop="zuhushenfenzheng">
        <el-input v-model="ruleForm.shenfenzheng" placeholder="身份证"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='zuhu'" label="手机" prop="zuhushouji">
        <el-input v-model="ruleForm.shouji" placeholder="手机"></el-input>
      </el-form-item>
                                                <el-form-item v-if="tableName=='chuzuren'" label="账号" prop="chuzurenzhanghao">
        <el-input v-model="ruleForm.zhanghao" placeholder="账号"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='chuzuren'" label="密码" prop="chuzurenmima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='chuzuren'" label="姓名" prop="chuzurenxingming">
        <el-input v-model="ruleForm.xingming" placeholder="姓名"></el-input>
      </el-form-item>
                                                            <el-form-item v-if="tableName=='chuzuren'" label="身份证" prop="chuzurenshenfenzheng">
        <el-input v-model="ruleForm.shenfenzheng" placeholder="身份证"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='chuzuren'" label="电话" prop="chuzurendianhua">
        <el-input v-model="ruleForm.dianhua" placeholder="电话"></el-input>
      </el-form-item>
                                                                                                                              <el-button @click="login()" class="btn-login" type="primary">注册</el-button>
    </el-form>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 注册
    login() {
                              if((!this.ruleForm.yonghuming) && `zuhu` == this.tableName){
        this.$message.error(`用户名不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `zuhu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                                                                                                          if(`zuhu` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
                                                if(`zuhu` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入电话格式`);
        return
      }
                                                                  if((!this.ruleForm.zhanghao) && `chuzuren` == this.tableName){
        this.$message.error(`账号不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `chuzuren` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                                                                                                          if(`chuzuren` == this.tableName && this.ruleForm.shenfenzheng&&(!this.$validate.checkIdCard(this.ruleForm.shenfenzheng))){
        this.$message.error(`身份证应输入身份证格式`);
        return
      }
                                                if(`chuzuren` == this.tableName && this.ruleForm.dianhua&&(!this.$validate.isMobile(this.ruleForm.dianhua))){
        this.$message.error(`电话应输入电话格式`);
        return
      }
                                                                                                                                                this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `${this.tableName}/register`,
            method: "post",
            data:this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$router.replace({ path: "/login" });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
