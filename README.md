This is a script and the resulting output for generating a graph, using data picked up from discogs regarding the number of tape releases per year.
This project was created in order foe me to write a [blog post](https://tilde.pt/~marado/blog/are-cassette-tapes-dead-again.html).

# Usage:

There are two steps to this process...

## Fetching the data

To regenerate `data.txt`, do:

```
$ npm install disconnect
$ bash fetch-data.sh YOUR_DISCOGS_API_TOKEN
```

## Generating the plot

`gnuplot plot.gp` generates `data.png`.
