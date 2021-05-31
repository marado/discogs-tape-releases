This is a script and the resulting output for generating a graph, using data picked up from discogs regarding the number of tape releases per year. The idea is to update this blog post: https://mindboosternoori.blogspot.com/2011/05/stop-claiming-is-dead.html

# Usage:

There are two steps to this process...

## Fetching the data

To regenerate `data.txt`, do:

```
$ npm install disconnect
$ bash fetch-data.sh YOUR_DISCOGS_API_TOKEN
```

## Generating the plot

The part where we turn data.txt into a pretty plot isn't done yet.
