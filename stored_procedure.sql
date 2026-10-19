USE classicmodels;

-- 1. Đổi ký tự phân cách câu lệnh thành //
DELIMITER //

-- 2. Tạo Stored Procedure đầu tiên
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

-- 3. Đổi lại ký tự phân cách về mặc định (dấu ;)
DELIMITER ;

-- 4. Gọi Stored Procedure vừa tạo
CALL findAllCustomers();


-- 5. Sửa Stored Procedure bằng cách Xóa (DROP) và Tạo lại (CREATE)
DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;

-- 6. Gọi lại Stored Procedure sau khi đã cập nhật
CALL findAllCustomers();
