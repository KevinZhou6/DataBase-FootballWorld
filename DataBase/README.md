# 使用 .sql 文件生成数据库的步骤

## 1. 下载 `.sql` 文件
- 访问 GitHub 上的仓库并找到所需的 `.sql` 文件。
- 点击文件，然后选择 **Raw** 查看原始格式。
- 右键点击并选择 **另存为...** 保存文件到计算机。

## 2. 准备数据库管理系统
- 确保计算机上已安装适当的数据库管理系统（如 MySQL, PostgreSQL 等）。
- 若尚未安装，下载并安装相应的数据库管理系统。

## 3. 创建数据库（如有必要）
- 打开数据库管理系统。
- 使用 SQL 命令或图形界面创建新的数据库（如果 `.sql` 文件中不包含创建数据库的命令）。
- 例如，在 MySQL 中，可以使用命令 `CREATE DATABASE database_name;`。

## 4. 导入 `.sql` 文件
- 使用数据库管理系统的工具导入 `.sql` 文件。
- 在命令行系统中，例如 MySQL，使用命令 `mysql -u username -p database_name < file_path.sql`，其中：
  - `username` 是数据库用户名，
  - `database_name` 是目标数据库名，
  - `file_path.sql` 是 `.sql` 文件的保存路径。


