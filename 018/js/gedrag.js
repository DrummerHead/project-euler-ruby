var calculateColor = function(num){
  var shade = Math.round(255 - (num * 2.55));
  var color = "rgb(255," + shade + "," + shade + ")";
  return color
}

var generateHTML = function(pyramid){
  var html = '<ul class="pyramid">';
  var rowLength = pyramid.length;

  for(row in pyramid){
    html += '<li style="margin-left:'+ (rowLength - row - 1) +'em"><ul>';
    for(brick in pyramid[row]){
      if(pyramid[row][brick][0]){
        html += '<li class="chosen-one" style="background-color:' + calculateColor(pyramid[row][brick]) + '">' + pyramid[row][brick] + '</li>';
      }
      else{
        html += '<li style="background-color:' + calculateColor(pyramid[row][brick]) + '">' + pyramid[row][brick] + '</li>';
      }
    }
    html += '</ul></li>';
  }
  html += '</ul>';
  document.write(html);
}

generateHTML(pyramid018);
generateHTML(pyramid067);
