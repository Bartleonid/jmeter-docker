#!/bin/bash

echo $GIT_BRANCH

rm -rf ${JMETER_HOME}/bin/jmx/results
${JMETER_HOME}/bin/jmeter -n -t ${JMETER_HOME}/bin/jmx/test.jmx -Jclient_id=${CLIENT_ID} -Jsecret_id=${SECRET_ID} -j ${JMETER_HOME}/bin/jmx/jmeter.log -l ${JMETER_HOME}/bin/jmx/results/jtl/test-Report.jtl -e -o ${JMETER_HOME}/bin/jmx/results/html

