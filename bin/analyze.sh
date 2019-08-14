#!/usr/local/bin/ruby

require 'json'

exercise_slug=ARGV[0]
iteration_folder=ARGV[1]

iteration_folder += "/" unless iteration_folder.end_with? "/"

response = case exercise_slug
when "approval"
  {
    status: "approve"
  }
when "approval-comments"
  {
    status: "approve",
    comments: [
      {
        "comment": "demo.sample.comment",
        "params": { "p1": "hello" }
      }
    ]
  }
when "disapprove"
  {
    status: "disapprove"
  }
when "disapprove-comments"
  {
    status: "disapprove",
    comments: [
      {
        "comment": "demo.sample.comment",
        "params": { "p1": "hello" }
      }
    ]
  }
when "disapprove-old-style-comments"
  {
    status: "disapprove",
    comments: [
      "demo.sample.comment"
    ]
  }
end

File.write("#{iteration_folder}analysis.json", response.to_json)
