$(document).on("turbolinks:load", () => {
  $("#new_article").on("ajax:success", (e) => {
  	console.log(e);
  })
});