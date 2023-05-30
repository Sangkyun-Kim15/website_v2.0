$(document).ready(function() {
  // Get the maximum allowed length for the content
  var maxContentLength = 1000; // Change this value to your desired maximum length
  var maxImageCount = 2; // Change this value to the desired maximum number of images

  // Initialize CKEditor
  CKEDITOR.replace('content');

  // Get the CKEditor instance
  var editor = CKEDITOR.instances.content;

  // Listen for changes in the editor content
  editor.on('change', function() {
    // Get the current length of the content
    var currentLength = editor.getData().length;

    // Check if the current length exceeds the maximum length
    if (currentLength > maxContentLength) {
      // Display an alert message
      alert('Maximum content length exceeded!');

      // Truncate the content to the maximum length
      var truncatedContent = editor.getData().substring(0, maxContentLength);
      editor.document.getBody().setHtml(truncatedContent);
    }

    // Get the number of uploaded images
    var imageCount = $(editor.document.$).find('img').length;

    // Check if the number of uploaded images exceeds the maximum count
    if (imageCount > maxImageCount) {
      // Display an alert message
      alert('Maximum image count exceeded!');

      // Remove the last uploaded image(s) until the count is within the limit
      var excessImages = imageCount - maxImageCount;
      for (var i = 0; i < excessImages; i++) {
        $(editor.document.$).find('img:last').remove();
      }
    }
  });
});
