# một số hằng số thươngf dùng
PI = 3.14159
SPEED_OF_LIGHT = 299792458 #tính tốc độ trong vật lý
MAX_CONNECTIONS = 100 #sử dụng để xác định số lượng kết nối tối đa mà một ứng dụng có thể xử lý.

DEFAULT_TIMEOUT = 30 #đặt giá trị mặc định cho thời gian chờ trong trường hợp không có thời gian chờ được chỉ định khác.
MAX_RETRIES = 3 #để xác định số lần thử lại tối đa khi một thao tác thất bại trước khi bị hủy bỏ.

# khai báo thông số cấu hình

DATABASE_HOST = "localhost" #ể đặt tên cho địa chỉ của máy chủ cơ sở dữ liệu mà ứng dụng kết nối đến.
DATABASE_PORT = 5432 #có thể xác định cổng mà ứng dụng sử dụng để kết nối đến cơ sở dữ liệu.

ERROR_MESSAGE = "An error occurred." #chứa một thông báo lỗi mặc định được sử dụng trong trường hợp có lỗi xảy ra trong ứng dụng.


# các hằng sử dụng trong các dự án  thực tế
# các hằng ko thể thay đổi giá trị trong suốt chương trình diễn ra

 # Constants for database configuration
DB_HOST = "localhost"
DB_PORT = 5432
DB_USERNAME = "user"
DB_PASSWORD = "password"
DB_NAME = "my_database"

# Constants for API endpoints
API_BASE_URL = "https://api.example.com"
API_VERSION = "v1"
GET_USER_ENDPOINT = "#{API_BASE_URL}/#{API_VERSION}/users"
CREATE_USER_ENDPOINT = "#{API_BASE_URL}/#{API_VERSION}/users"

# Constants for user roles
ADMIN_ROLE = "admin"
USER_ROLE = "user"

# Constants for application settings
DEFAULT_TIMEOUT = 30
MAX_RETRIES = 3
LOG_LEVEL = "debug"

# Constants for error messages
ERROR_MESSAGE_NOT_FOUND = "Resource not found"
ERROR_MESSAGE_UNAUTHORIZED = "Unauthorized access"
ERROR_MESSAGE_INVALID_INPUT = "Invalid input"

# Constants for user interface
DEFAULT_FONT_SIZE = 16
DEFAULT_THEME = "light"
