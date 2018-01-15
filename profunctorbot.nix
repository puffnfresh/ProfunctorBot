{ lambdabot }:

lambdabot.override {
  configuration = ''
    [ commandPrefixes ==> ["?"], enableInsults ==> False ]
  '';
  modules = ''
    filter (`notElem` ["vixen", "quote", "topic", "time", "filter", "ticker"]) oldDefaultModules
  '';
}
