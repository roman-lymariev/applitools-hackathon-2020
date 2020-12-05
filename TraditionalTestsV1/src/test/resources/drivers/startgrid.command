#! /bin/bash
osascript -e 'tell app "Terminal"
    do script "cd /Users/rlymariev/work/projects/applitools-example/TraditionalTestsV1/src/test/resources/drivers &&
java -jar selenium-server-standalone.jar -role hub -hubConfig hubconfig.json"
end tell'
osascript -e 'tell app "Terminal"
    do script "cd /Users/rlymariev/work/projects/applitools-example/TraditionalTestsV1/src/test/resources/drivers &&
java -jar -Dwebdriver.chrome.driver=chromedriver -Dwebdriver.gecko.driver=geckodriver -Dwebdriver.edge.driver=msedgedriver selenium-server-standalone.jar -role node -nodeConfig nodeconfig.json"
end tell'

