# jdbc-thin-oracle-test
快速探测JDK，TOMCAT版本和oracle的JDBC驱动个是否兼容

- 在tomcat的webapps目录下克隆工程

```
git clone https://github.com/weekndCN/jdbc-thin-oracle-test.git
```
- 修改connDB.jsp的数据库地址

```
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","test","test");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select table_name from user_tables where 1=2");
```

- 将需要测试的jdbc驱动包放入目录WEB-INF/lib下。ojbc或者class其中一个jar文件
  - ojbcXX.jar
  - classesXX.jar
 > 根本需要放入测试的jdbc jar文件
 
- 启动tomcat
```
cataline.sh run
```

- 测试
  - 网页
  ```
  http://localhost:8080/jdbc-thin-oracle-test/connDB.jsp
  ```
  - CURL
  ```
  curl http://localhost:8080/jdbc-thin-oracle-test/connDB.jsp -i
  ```
