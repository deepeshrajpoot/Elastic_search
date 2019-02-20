$(document).on('turbolinks:load', function(){
  var articles = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: {
      url: '/articles/autocomplete?query=%QUERY',
      wildcard: '%QUERY'
    }
  });
  $('#articles_search').typeahead(null, {
    source: articles
  });
})