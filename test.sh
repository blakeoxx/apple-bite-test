#!/bin/bash

set +e


echo -n "Echo with no newline"
echo " works fine"

test_var="foo $(echo -n "bar") baz"
echo "Command substitution result: ~${test_var}~"

echo "Single bracket with gt flag"
if [ 3 -gt 2 ]
then
	echo "eval true"
else
	echo "eval false"
fi

echo "Double bracket with gt flag"
if [[ 3 -gt 2 ]]
then
	echo "eval true"
else
	echo "eval false"
fi

echo "Single bracket with n flag"
if [ -n "foo" ]
then
	echo "eval true"
else
	echo "eval false"
fi

echo "Double bracket with n flag"
if [[ -n "foo" ]]
then
	echo "eval true"
else
	echo "eval false"
fi

exit 0