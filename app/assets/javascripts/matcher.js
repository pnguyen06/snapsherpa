  var substringMatcher = function(strs) {
  return function findMatches(q, cb) {
    var matches, substrRegex;
 
    // an array that will be populated with substring matches
    matches = [];
 
    // regex used to determine if a string contains the substring `q`
    substrRegex = new RegExp(q, 'i');
 
    // iterate through the pool of strings and for any string that
    // contains the substring `q`, add it to the `matches` array
    $.each(strs, function(i, str) {
      if (substrRegex.test(str)) {
        // the typeahead jQuery plugin expects suggestions to a
        // JavaScript object, refer to typeahead docs for more info
        matches.push({ value: str });
      }
    });
 
    cb(matches);
  };
};
 
var states = ["16 Handles",  "Acura", "Alex and Ani", "Amazon", "American Apparel", "American Eagle", "Arizona Diamondbacks", "ASOS", "Atlanta Hawks", "Audi", "Baltimore Orioles", "Brooklyn Nets", "Buffalo Sabres", "Burger King", "Businessweek", "Carolina Hurricanes", "Charlotte Hornets", "Chicago Bulls", "Chicago Fire", "Chicago White Sox", "Cincinnati Reds", "Cleveland Browns", "Coca-Cola", "Colorado Avalanche", "Colorado Rockies", "Columbus Blue Jackets", "Cosmopolitan", "Dallas Cowboys", "Dallas Stars", "Def Jam Recordings", "Denver Nuggets", "Detroit Red Wings", "Detroit Tigers", "Digg", "Dunkin Donuts", "EA Sports", "Evian", "FC Dallas", "Free People", "Gameloft", "GE", "Girls", "Groupon", "GrubHub", "Hardee's", "Heineken", "Hollister Co.", "Houston Texans", "IHOP", "InStyle", "Intel", "Jacksonville Jaguars", "Journeys", "Kansas City Royals", "Karmaloop", "Lifetime", "Live Nation", "Los Angeles Clippers", "Los Angeles Galaxy", "Mashable", "McDonald's", "Memphis Grizzlies", "Mercedes-Benz", "Miami Dolphins", "Milwaukee Bucks", "Minnesota Timberwolves", "Minnesota Twins", "Minnesota Wild", "MLB", "Montreal Canadiens", "Mountain Dew", "MTV", "Nasty Gal", "NBA", "New England Revolution", "New Jersey Devils", "New Orleans Pelicans", "New Orleans Saints", "New York Islanders", "New York Jets", "New York Rangers", "NPR", "Oakland Athletics", "Philadelphia 76ers", "Philadelphia Eagles", "Philadelphia Zoo", "Phoenix Suns", "Pittsburgh Penguins", "Portland Trail Blazers", "Real Salt Lake", "Rebecca Minkoff", "Red Bull", "Sacramento Kings", "San Antonio Spurs", "San Francisco Giants", "Seattle Mariners", "Seattle Seahawks", "Seattle Sounders FC", "Sephora", "Seventeen", "Sonic", "Sporting Kansas City", "Standard Hotels", "Starbucks", "Stride", "Taco Bell", "Tampa Bay Lightning", "Texas Rangers", "The Today Show", "The Vampire Diaries", "Thrillist", "Tiesto", "Walt Disney World", "Washington Capitals", "Washington Wizards", "Wendy's", "Wet Seal", "Winnipeg Jets", "World Surf League", "WWE", "Young Hollywood", "Zappos", "Calvin Harris", "Diplo", "Alesso", "3LAU", "Martin Garrix", "Victoria's Secret Pink"
];
 
$('#the-basics .typeahead').typeahead({
  hint: true,
  highlight: true,
  minLength: 1
},
{
  name: 'states',
  displayKey: 'value',
  source: substringMatcher(states)
});