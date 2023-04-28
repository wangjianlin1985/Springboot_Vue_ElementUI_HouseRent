const base = {
    get() {
                return {
            url : "http://localhost:8080/springbootGxYgl/",
            name: "springbootGxYgl",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootGxYgl/front/index.html'
        }
            },
    getProjectName(){
        return {
            projectName: "房屋租赁"
        } 
    }
}
export default base