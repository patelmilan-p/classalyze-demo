var createChart = function() {
  $.ajax({
    url: "http://classalyze-demo-staging.herokuapp.com/classrooms/1",
    type: "GET",
    dataType : "json",

    success: function( json ) {

        initial = [{x:0, y:0}];
        result = [{ values: initial.concat(json.student7),
                    key: 'Student 7',
                    color: '#ff7f0e' },
                  { values: initial.concat(json.classroom),
                    key: 'Class 9A',
                    color: '#2ca02c' }];

        // create line chart
        nv.addGraph(function() {
          var chart = nv.models.lineChart()
                      .options({
                        x: function(d,i) { return i},
                      });

          var x = d3.scale.ordinal().domain(["0", "FA1","FA2", "SA1"]).rangePoints([1, 1060]);
          chart.xAxis
              .axisLabel('Tests')
              .scale(x)

          chart.yAxis
              .axisLabel('Scores')
              .tickFormat(function(d, i){ return d + "%" });

          d3.select('#chart svg')
              .datum(result)
              .transition().duration(500)
              .call(chart);

          return chart;
        });
    },

    error: function( xhr, status ) {
        alert( "Sorry, there was a problem!" );
    },

    // code to run regardless of success or failure
    //complete: function( xhr, status ) {
        //alert( "The request is complete!" );
    //}
  });
};

$(document).ready(createChart);
$(document).on('page:load', createChart);
