FROM openjdk as build

ADD https://github.com/dgarijo/Widoco/releases/download/v1.4.14/widoco-1.4.14-jar-with-dependencies.jar /usr/bin/widoco.jar

WORKDIR /usr/src/app

COPY src/ /usr/src/app/

# https://github.com/dgarijo/Widoco/#how-to-use-widoco
RUN mkdir doc \
  & java -jar /usr/bin/widoco.jar -ontFile setu.ttl -outFolder doc -webVowl -lang en-nl

# Copy the NL generated documentation index to be the main index file
RUN cp ./doc/index-en.html ./doc/index.html

FROM nginx

COPY --from=build /usr/src/app/doc /usr/share/nginx/html