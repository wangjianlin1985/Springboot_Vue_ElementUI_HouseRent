<template>
  <el-header>
    <el-menu
      background-color="#17b3a3"
      text-color="#fff"
      active-text-color="#ffd04b"
      mode="horizontal"
    >
      <div class="fl title">{{this.$project.projectName}}</div>
      <div class="fr logout" style="display:flex;">
        <el-menu-item index="3">
          <div>{{this.$storage.get('role')}} {{this.$storage.get('adminName')}}</div>
        </el-menu-item>
        <el-menu-item @click="onLogout" index="2">
          <div>退出登录</div>
        </el-menu-item>
        <el-menu-item  @click="onIndexTap" class="fr" index="4">
          <div>退出到首页</div>
        </el-menu-item>
      </div>
      <!-- <el-menu-item @click="dialogVisible=true" class="fr" index="2">修改密码</el-menu-item> -->
      <!-- <el-menu-item class="fr" index="1">
        <img class="avator" src="@/assets/img/avator.png" alt>
      </el-menu-item> -->
    </el-menu>
    <el-dialog title="修改密码" :visible.sync="dialogVisible" width="40%" append-to-body>
      <el-form ref="ruleForm" :rules="rules" :model="ruleForm" label-width="80px">
        <el-form-item label="原密码" prop="password">
          <el-input v-model="ruleForm.password"></el-input>
        </el-form-item>
        <el-form-item label="新密码" prop="newpassword">
          <el-input v-model="ruleForm.newpassword"></el-input>
        </el-form-item>
        <el-form-item label="确认密码" prop="repassword" >
          <el-input v-model="ruleForm.repassword"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="onUpdateHandler">确 定</el-button>
      </span>
    </el-dialog>
  </el-header>
</template>

<script>
export default {
  data() {
    return {
      dialogVisible: false,
      ruleForm: {},
      user: {},
      rules: {
        password: [
          {
            required: true,
            message: "密码不能为空",
            trigger: "blur"
          }
        ],
        newpassword: [
          {
            required: true,
            message: "新密码不能为空",
            trigger: "blur"
          }
        ],
        repassword: [
          {
            required: true,
            message: "确认密码不能为空",
            trigger: "blur"
          }
        ]
      }
    };
  },
  mounted() {
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.user = data.data;
      } else {
        this.$message.error(data.msg);
      }
    });
  },
  methods: {
    onLogout() {
      this.$storage.remove("Token");
      this.$router.replace({ name: "login" });
    },
    onIndexTap(){
      window.location.href = `${this.$base.indexUrl}`
    },
    // 修改密码
    onUpdateHandler() {
      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          var password = "";
          if (this.user.mima) {
            password = this.user.mima;
          } else if (this.user.password) {
            password = this.user.password;
          }
          if (this.ruleForm.password != password) {
            this.$message.error("原密码错误");
            return;
          }
          if (this.ruleForm.newpassword != this.ruleForm.repassword) {
            this.$message.error("两次密码输入不一致");
            return;
          }
          this.user.password = this.ruleForm.newpassword;
          this.user.mima = this.ruleForm.newpassword;
          this.$http({
            url: `${this.$storage.get("sessionTable")}/update`,
            method: "post",
            data: this.user
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message.error("修改密码成功,下次登录系统生效");
              this.dialogVisible = false;
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
.el-header .fr {
  float: right;
}
.el-header .fl {
  float: left;
}
.el-header {
  width: 100%;
  color: #333;
  text-align: center;
  line-height: 60px;
  padding: 0;
  z-index: 99;
}
.logo {
  width: 60px;
  height: 60px;
  margin-left: 70px;
}
.avator {
  width: 40px;
  height: 40px;
  background: #ffffff;
  border-radius: 50%;
}
.title {
  color: #ffffff;
  font-size: 20px;
  font-weight: bold;
  margin-left: 20px;
}
</style>
