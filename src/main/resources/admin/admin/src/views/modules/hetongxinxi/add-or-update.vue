<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                  <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="合同名称" prop="hetongmingcheng">
          <el-input v-model="ruleForm.hetongmingcheng" 
              placeholder="合同名称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.hetongmingcheng" label="合同名称" prop="hetongmingcheng">
              <el-input v-model="ruleForm.hetongmingcheng" 
                placeholder="合同名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'" label="用户名" prop="yonghuming">
          <el-select  @change="yonghumingChange" v-model="ruleForm.yonghuming" placeholder="请选择用户名">
            <el-option
                v-for="(item,index) in yonghumingOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.yonghuming" label="用户名" prop="yonghuming">
              <el-input v-model="ruleForm.yonghuming" 
                placeholder="用户名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="租户姓名" prop="zuhuxingming">
          <el-input v-model="ruleForm.zuhuxingming" 
              placeholder="租户姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zuhuxingming" label="租户姓名" prop="zuhuxingming">
              <el-input v-model="ruleForm.zuhuxingming" 
                placeholder="租户姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          <el-col :span="24">  
        <el-form-item v-if="type!='info'" label="合同文件" prop="hetongwenjian">
          <file-upload
          tip="点击上传合同文件"
          action="file/upload"
          :limit="1"
          :multiple="true"
          :fileUrls="ruleForm.hetongwenjian?ruleForm.hetongwenjian:''"
          @change="hetongwenjianUploadChange"
          ></file-upload>
        </el-form-item>  
        <div v-else>
          <el-form-item v-if="ruleForm.hetongwenjian" label="合同文件" prop="hetongwenjian">
            <el-button type="text" size="small" @click="download(ruleForm.hetongwenjian)">下载</el-button>
          </el-form-item>
        </div>    
      </el-col>      
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="签订日期" prop="qiandingriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.qiandingriqi" 
                type="date"
                placeholder="签订日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.qiandingriqi" label="签订日期" prop="qiandingriqi">
              <el-input v-model="ruleForm.qiandingriqi" 
                placeholder="签订日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="生效日期" prop="shengxiaoriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.shengxiaoriqi" 
                type="date"
                placeholder="生效日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shengxiaoriqi" label="生效日期" prop="shengxiaoriqi">
              <el-input v-model="ruleForm.shengxiaoriqi" 
                placeholder="生效日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="年限" prop="nianxian">
          <el-input v-model="ruleForm.nianxian" 
              placeholder="年限" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.nianxian" label="年限" prop="nianxian">
              <el-input v-model="ruleForm.nianxian" 
                placeholder="年限" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="账号" prop="zhanghao">
          <el-input v-model="ruleForm.zhanghao" 
              placeholder="账号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zhanghao" label="账号" prop="zhanghao">
              <el-input v-model="ruleForm.zhanghao" 
                placeholder="账号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming" 
              placeholder="姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.xingming" label="姓名" prop="xingming">
              <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                                            </el-row>
                                                                  <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'" label="合同内容" prop="hetongneirong">
                <el-input
                  style="min-width: 200px; max-width: 600px;"
                  type="textarea"
                  :rows="8"
                  placeholder="合同内容"
                  v-model="ruleForm.hetongneirong">
                </el-input>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.hetongneirong" label="合同内容" prop="hetongneirong">
                    <span>{{ruleForm.hetongneirong}}</span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
                                                                                                                                                                                                                                                                                                                  <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
            ruleForm: {
                        hetongmingcheng: '',
                                yonghuming: '',
                                zuhuxingming: '',
                                hetongneirong: '',
                                hetongwenjian: '',
                                qiandingriqi: '',
                                shengxiaoriqi: '',
                                nianxian: '',
                                zhanghao: '',
                                xingming: '',
                                sfsh: '',
                                shhf: '',
                      },
                                      yonghumingOptions: [],
                                                                                                                                                                rules: {
                  hetongmingcheng: [
                            { required: true, message: '合同名称不能为空', trigger: 'blur' },
                                                                                              ],
                  yonghuming: [
                                                                                              ],
                  zuhuxingming: [
                                                                                              ],
                  hetongneirong: [
                                                                                              ],
                  hetongwenjian: [
                                                                                              ],
                  qiandingriqi: [
                                                                                              ],
                  shengxiaoriqi: [
                                                                                              ],
                  nianxian: [
                                                                                              ],
                  zhanghao: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  sfsh: [
                                                                                              ],
                  shhf: [
                                                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                                                                                      },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='hetongmingcheng'){
            this.ruleForm.hetongmingcheng = obj[o];
            continue;
          }
                    if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
            continue;
          }
                    if(o=='zuhuxingming'){
            this.ruleForm.zuhuxingming = obj[o];
            continue;
          }
                    if(o=='hetongneirong'){
            this.ruleForm.hetongneirong = obj[o];
            continue;
          }
                    if(o=='hetongwenjian'){
            this.ruleForm.hetongwenjian = obj[o];
            continue;
          }
                    if(o=='qiandingriqi'){
            this.ruleForm.qiandingriqi = obj[o];
            continue;
          }
                    if(o=='shengxiaoriqi'){
            this.ruleForm.shengxiaoriqi = obj[o];
            continue;
          }
                    if(o=='nianxian'){
            this.ruleForm.nianxian = obj[o];
            continue;
          }
                    if(o=='zhanghao'){
            this.ruleForm.zhanghao = obj[o];
            continue;
          }
                    if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
            continue;
          }
                    if(o=='sfsh'){
            this.ruleForm.sfsh = obj[o];
            continue;
          }
                    if(o=='shhf'){
            this.ruleForm.shhf = obj[o];
            continue;
          }
                  }
                                                                                                                                                                                                              }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                                                                                                                    this.ruleForm.zhanghao = json.zhanghao
                                                this.ruleForm.xingming = json.xingming
                                                                          } else {
          this.$message.error(data.msg);
        }
      });
                                                            this.$http({
              url: `option/zuhu/yonghuming`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.yonghumingOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
                                                                                                                                                                                                                },
                    // 下二随
    yonghumingChange () {
      this.$http({
        url: `follow/zuhu/yonghuming?columnValue=`+ this.ruleForm.yonghuming,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
                                                                                if(data.data.zuhuxingming){
                this.ruleForm.zuhuxingming = data.data.zuhuxingming
              }
                                                                                                                                                                                                                                    } else {
          this.$message.error(data.msg);
        }
      });
    },
                                                                                            // 多级联动参数
                                                                                                                                    info(id) {
      this.$http({
        url: `hetongxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                                                                                                            this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `hetongxinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.hetongxinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.hetongxinxiCrossAddOrUpdateFlag = false;
    },
                                                                        hetongwenjianUploadChange(fileUrls) {
                this.ruleForm.hetongwenjian = fileUrls;
            },
                                                                                                  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
</style>
