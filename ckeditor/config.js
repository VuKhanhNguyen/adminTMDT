/*
 * @license Copyright (c) 2003-2023, CKSource Holding sp. z o.o. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

    
	// config.filebrowserUploadUrl = '/duong-dan-upload'; // <-- Đường dẫn xử lý upload
    // config.filebrowserUploadMethod = 'form';
	// config.extraPlugins = 'base64image';
    // config.removePlugins = 'easyimage'; // nếu có
    // config.toolbar = [
    //     { name: 'insert', items: [ 'Image', 'Base64Image' ] },
    //     // các toolbar khác
    // ];

    config.image_previewText = ' ';
    config.allowedContent = true;
    config.image2_disableResizer = false;
    
    // Cho phép bỏ qua việc xác thực URL
    config.image_validateFields = false;
    
    // Bạn cũng có thể kích hoạt plugin upload hình ảnh
    config.filebrowserUploadUrl = 'C:/Users/ADMIN/Pictures/Screenshots'; // Điều chỉnh đường dẫn phù hợp
    config.filebrowserUploadMethod = 'form';
    config.extraPlugins = 'base64image';



};
