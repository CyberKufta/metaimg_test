// $(function() {
//     var mediaDropzone;
//       mediaDropzone = new Dropzone("#media-dropzone");
//         return mediaDropzone.on("success", function(file, responseText) {
//               var imageUrl;
//                   imageUrl = responseText.file.url;
//                     });
// });

$(document).ready(function(){
  //disable auto discover
  Dropzone.autoDiscover = false;

  //grab our upload form by its id
  $("#media-dropzone").dropzone({
    // restrict image size to a maximum 1MB
    maxFilesize: 1,
    // changed the passed param to one accepted by our rails app
    paramName: "image[file]",
    //show remove links on each image upload
    addRemoveLinks: true,
    // only 1 file
    maxFiles: 1
  });
});
