#!/bin/bash

echo "Checking if documentation changes are included"
changed_files=$(git log origin/master..HEAD --name-only --pretty=format:)
number_of_changed_files=$(echo "${changed_files}" | wc -l)
changed_doc_files=$(echo -n "${changed_files}" | grep \.md)
number_of_changed_doc_files=$(echo "${changed_doc_files}" | wc -l)
changed_json_files=$(echo -n "${changed_files}" | grep \.json)

if [[ $changed_files == "" ]]; then
    echo "No changed files found => no check"
    exit 0
fi

if [[ $changed_doc_files == "" ]]; then
  if [[ $changed_files == $changed_json_files ]]; then
    echo "Only json files updated, okayish, maybe lokalise"
    exit 1
  else
    echo "No documentation changes found => fail"
    exit 1
  fi
fi

echo "All good ${number_of_changed_doc_files} documentation change found in ${number_of_changed_files} total files"
exit 0
