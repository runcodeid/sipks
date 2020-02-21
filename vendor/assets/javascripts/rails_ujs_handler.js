var handleConfirm = function(link){
  if (!allowAction(link)){
    Rails.stopEverything(link);
  }
}
//User click confirm button
var allowAction = function(link){
  if (link.target.getAttribute("data-confirm") == undefined){
    return true;
  }
  showConfirmationDialog(link);
  return false;
}
//Display the confirmation dialog
var showConfirmationDialog = function(link){
  var message = link.target.getAttribute("data-confirm");
  swal({
    title: message,
    type: 'warning',
    showCancelButton: true,
    buttonsStyling: false,
    confirmButtonClass: 'btn btn-danger',
    confirmButtonText: 'Ya',
    cancelButtonText: 'Batal',
    cancelButtonClass: 'btn btn-secondary'
  }).then((result) => {
    if (result.value) {
      link.target.removeAttribute("data-confirm");
      link.target.click();
    }
  });
}

document.addEventListener('rails:attachBindings', element => {
  Rails.delegate(document, 'a[data-confirm]', 'click', handleConfirm)
})
