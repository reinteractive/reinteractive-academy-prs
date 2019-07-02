$(document).on('ready page:load turbolinks:load', function () {
  var chart = c3.generate({
    data: {
      columns: [
          ['Votes', 3, 2, 1, 4, 1, 2],
          ['Customers', 13, 3, 2, 3, 2, 5],
          ['Feedback', 0, 1, 2, 3, 2, 4],
          ['Ideas', 0, 3, 2, 1, 2, 0]
      ]
    },
    axis: {
      x: {
          type: 'category',
          categories: ['Feb 1', 'Feb 2', 'Feb 3', 'Feb 4', 'Feb 5', 'Feb 6', 'Feb 7', 'Feb 8', 'Feb 9']
      }
    },
    color: {
      pattern: ['#A7E56D', '#72D4F9', '#A872F9', '#F7B84F']
    }
  });
});
