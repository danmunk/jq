function sortTable(nr, asc) {
  $("table>tbody>tr").tsort("td:eq("+nr+")",{order:asc});
  $("table tr:nth-child(odd)").removeClass("dark");
  $("table tr:nth-child(even)").addClass("dark");
}

$.fn.sortable = function(index) {
  return $(this).toggle(
    function() { sortTable(index, 'asc'); },
    function() { sortTable(index, 'desc'); }
  );
}

$.ajaxSetup({
  beforeSend: function(xhr) { xhr.setRequestHeader('Accept', 'text/javascript') },
  error: function(xhr, statusMessage, exception) {
    $("#content").html("Could not communicate with server, please try again later")
  }
});

