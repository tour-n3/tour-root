# Project tour-root

## Khởi động
* Run file [init.sh](init.sh) để clone các sub module về
* IDEA hiển thị thông báo _"Gradle build scripts found"_ ở góc phải bên dưới màn hình
* Nhấn Load để IDEA load các sub module 
* Nếu IDEA không suggest Load module:
* - Thêm module thủ công: ⚙ ⭢ Project Structure ⭢ Modules ⭢ Add (+) ⭢ Import Module ⭢ ...
* - Hoặc thoát IDEA ⭢ Xoá thư mục `.idea` ⭢ ReOpen project `root`

## Thêm mới module
* Clone module vào trong project `root`
* Thêm mới lệnh clone: `git clone git_repo` vào file [init.sh](init.sh)
* Thêm mới việc loại trừ module đó trong project `root`: `/module_name/ export-ignore` vào file [.gitattributes](.gitattributes)
