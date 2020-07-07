FROM ruby:rc-alpine
LABEL MAINTAINER "drorasaf87@gmail.com"

RUN gem install statelint

# Labels.
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="drorasaf/sfn-linter"
LABEL org.label-schema.description="AWS Step Function Linter"
LABEL org.label-schema.vcs-url="https://github.com/drorasaf/sfn-linter"
LABEL org.label-schema.docker.cmd="docker run -v $(pwd):/jsons drorasaf/sfn-linter /jsons/state_machine.json"

ENTRYPOINT ["statelint"]
