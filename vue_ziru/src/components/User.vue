<template>
  <div>
    <div style="margin: 10px 0; display: flex">
      <el-input
        style="width: 200px"
        placeholder="请输入名称"
        suffix-icon="el-icon-search"
        v-model="username"
      ></el-input>
      <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
    </div>

    <el-table
      tooltip-effect="dark"
      :data="tableData"
      border
      stripe
      :header-cell-class-name="headerBg"
      @selection-change="handleSelectionChange"
    >
      <el-table-column
        type="selection"
        prop="id"
        label="ID"
        width="80"
      ></el-table-column>
      <el-table-column prop="uid" label="用户ID" width="140"></el-table-column>
      <el-table-column
        prop="password"
        label="密码"
        width="120"
      ></el-table-column>
      <el-table-column prop="uname" label="用户名"></el-table-column>
      <el-table-column prop="email" label="邮箱"></el-table-column>

      <el-table-column label="操作" width="200" align="center">
        <template slot-scope="scope">
          <el-button type="success" @click="editUser(scope.row)"
            >编辑 <i class="el-icon-edit"></i
          ></el-button>
          <el-popconfirm
            class="ml-5"
            confirm-button-text="确定"
            cancel-button-text="我再想想"
            icon="el-icon-info"
            icon-color="red"
            title="您确定删除吗？"
            @confirm="deleteUser(scope.row.uid)"
          >
            <el-button type="danger" slot="reference"
              >删除 <i class="el-icon-remove-outline"></i
            ></el-button>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>
    <div style="padding: 10px 0; text-align: center">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="pageNum"
        :page-sizes="[2, 5, 10, 20]"
        :page-size="pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      >
      </el-pagination>
    </div>

    <el-dialog title="用户信息" :visible.sync="dialogFormVisible" width="30%">
      <el-form label-width="80px" size="small">
        <el-form-item label="ID" disabled="false">
          <el-input
            v-model="form.uid"
            autocomplete="off"
            :disabled="true"
          ></el-input>
        </el-form-item>
        <el-form-item label="用户名">
          <el-input v-model="form.uname" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="form.password" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="save()">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>
  
  <script>
import axios from "axios";

export default {
  name: "User",
  data() {
    return {
      imageUrl: "",
      options: [
        {
          value: "true",
          label: "1",
        },
        {
          value: "false",
          label: "2",
        },
      ],
      options1: [
        {
          value: "false",
          label: "1",
        },
        {
          value: "true",
          label: "2",
        },
      ],
      value: "",
      value1: "",
      tableData: [],
      total: 0,
      pageNum: 1,
      pageSize: 5,
      username: "",
      email: "",
      address: "",
      form: {},
      formnew: {},
      dialogFormVisible: false,
      multipleSelection: [],
      headerBg: "headerBg",
    };
  },
  created() {
    this.load();
  },
  methods: {
    /*布尔值格式化：cellValue为后台返回的值*/
    formatBoolean: function (row, column, cellValue) {
      var ret = ""; //你想在页面展示的值
      if (cellValue) {
        ret = "是"; //根据自己的需求设定
      } else {
        ret = "否";
      }
      return ret;
    },
    load() {
      let flag = 0;
      console.log(localStorage.getItem("name"));
      let name = localStorage.getItem("name");
      if (name === "admin") {
        axios
          .get("http://localhost:8081/ssmZiRu/page", {
            params: {
              pageNum: this.pageNum,
              pageSize: this.pageSize,
              uname: this.username,
            },
          })
          .then((res) => {
            console.log(res.data);
            this.tableData = res.data.data;
            this.total = res.data.total;
          });
      } else {
        axios.get("http://localhost:8081/ssmZiRu/findone?uname="+name).then((res) => {
          this.total = 1;
          console.log(res.data);
          this.tableData.forEach(item => {
            if(item.uid==res.data.uid){
              flag++;
            }
          });
          if(!flag)
          this.tableData.push(res.data)

        });
      }
    },
    handleSizeChange(pageSize) {
      this.pageSize = pageSize;
      this.load();
    },
    handleCurrentChange(pageNum) {
      this.pageNum = pageNum;
      this.load();
    },
    AddUser() {
      this.dialogFormVisible = true;
      this.form = {};
    },
    editUser(row) {
      this.form = JSON.parse(JSON.stringify(row));
      this.dialogFormVisible = true;
    },
    deleteUser(id) {
      axios.delete("http://localhost:8081/ssmZiRu/" + id).then((res) => {
        console.log(res.data);
        if (res.data == 1) {
          this.$message.success("删除成功");
          this.load();
        } else {
          this.$message.error("删除失败");
        }
      });
    },
    handleSelectionChange(val) {
      this.multipleSelection = val;
    },

    save() {
      // this.formnew = JSON.stringify(this.form)
      axios
        .post("http://localhost:8081/ssmZiRu/save", this.form)
        .then((res) => {
          if (res.data) {
            this.$message.success("保存成功");
            this.dialogFormVisible = false;
            this.load();
          } else {
            this.$message.error("保存失败");
          }
        });
    },
  },
};
</script>
  
  
  <style>
.headerBg {
  background: #eee !important;
}
</style>