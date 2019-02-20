$(function() {
  var articles = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('title'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: { 
      url: "/articles/autocomplete?query=%QUERY",
      wildcard: "%QUERY"
    }
  });

  articles.initialize();

  $('#articles_search').typeahead(null, {
    source: articles
  });
});
