# [@eth_classic](https://twitter.com/eth_classic) Twitter Together

This repo uses the [Twitter-Together](https://github.com/twitter-together/action/) GitHub Action to allow anyone to make a pull request in order to submit tweets to the [@eth_classic](https://twitter.com/eth_classic) Twitter Account.

## How to Tweet

1. Open the [tweets](./tweets/) folder.
1. Click "Add file" -> "Create new file".
1. Enter the contents of the tweet you want to submit. 
    - Make sure the content follows the [rules](#Rules).
    - Ensure the formatting matches one of the [tweet types](#Tweet-Types).
1. Make sure the filename is correct ("Name your file...").
    - It must end in `.tweet` and be inside the `tweets` folder. 
    - It must follow the format `YYMMDD-Your-Description.tweet`
1. Click "Propose new file", ensuring you are creating a new branch.
1. Click "Create pull request"
1. Your tweet will be reviewed for approval

## Rules

The `@eth_classic` account was the main verified Twitter account for ETC, and we hope to once again build up a following and reputation that keeps that would dignify it with verified status in the future. Tweets from submitted to this should take this into consideration and remain professional, relevant and neutral. 

If you want your submitted tweet to be approved, the contents of the tweet must follow the following rules. If the tweet you wish to submit does not follow these rules, check out the [`@ETC_Network`](https://github.com/ethereumclassic/tweets-ETC_Network) account, which has a more relaxed set of rules and may allow the tweet you wish to post, including memes and other content that drives engagement.

If you have suggestions to amend these rules, please create a new issue in this repository.

### Basics

All tweets must conform to the Twitter rules and policies found at https://help.twitter.com/en/rules-and-policies. Additionally;

- Dignity: No obscenities, explicit language, racism, sexism, etc.
- Neutrality: No attacking or promoting of non-ETC projects, no drama.
- Seriousness: No memes, jokes, quips, hot takes, etc.
- Accuracy: No linking to overly opinionated, biased or unverifiable information.
- Relevance: No spam, non-ETC related content, limit tweets about the same topic.
- Safety: No links to scams, no encouraging the purchase of assets.

### Content

The `eth_classic` account serves to inform it’s followers in an unbiased way about interesting happening in the Ethereum Classic world. It is a pillar of neutrality, a honey badger that does not care about external drama, and serves to inform others about it’s own situation, protocol updates, and other relevant news.

Tweets from this account should written from the point of view of the ETC blockchain itself. If a proposed tweet can't pass a test of "If it had a voice, would the chain itself say..." then that tweet would not be acceptable.

Acceptable topics to Tweet about include but are not limited to:

- Important development updates such as Hard Fork announcements.
- ETC philosophy and principles, and their benefits, quotes from the website.
- Benefits of ETC technical properties (such as PoW, Sound Money) compared to other blockchains (but must not ‘dunk’ on other projects).
- Keeping followers in the loop about important community discussions (e.g. ECIPs, ongoing debates).
- Community events, conferences, meetups, initiatives, discussions.
- Interesting technical analysis of network attributes such as hashrate, throughput, price movement.
- Ecosystem updates, new projects, wallets, services, exchange listings (see next below).

### Third Party Projects

- Must be relevant to ETC.
- Projects from **large and established** projects (e.g. Binance listing Tether-ETC pair, Chainlink deploys to ETC, etc.) can be (re)tweeted without disclaimers.
- Projects from **small lesser known** project must be linked to via the website, which includes a disclaimer, must include a disclaimer within the tweet.

### Retweets

- Retweets must follow the above rules, and/or include required disclaimer within retweet message.
- Must not excessively retweet the same account (up to 5 per month)

### Formatting and Style

- Neutral, factual writing style.
- Double spacing between new sentences.
- Correct use of capitalization.
- Reasonable use of Hashtags (up to 3 hashtags), e.g. #EthereumClassic, $ETC.
- Use of images encouraged (see Media style).
- Use of Emojis encouraged.

### Review Process

During the review process; 

- Ensure the generated preview formatted is correcty, this triggered manually if they come from outside contributors.
- **Do not trigger Actions from Pull Reqeusts that suspiciously modify the [workflow](/.github/workflows/twitter-together.yml) file**. Check that it is only adding a tweet. Do not reopen a PR that has suspiciously modified the workflow file.
- Remain civil and work towards to goal of creating the best tweets in common interest.
- Either come to agreement in the PR about wording, or Submit a new Pull Request.
- Do not edit original PR creator’s Tweet, other than to fix formatting or typos.

### Examples of Good Tweets (and why)

Coming Soon.

## Tweet Types

### [Simple Tweet](https://twitter.com/testing_tt_/status/1575821590381690881)

```tweet
Hello, world!!!
```

### Retweet (with no text)

The URL MUST follow the exact format as below, without any tracking `?ctx=` parameters.

```tweet
---
retweet: https://twitter.com/testing_tt_/status/1576500683087302656
---
```

### [Retweet (with text)](https://twitter.com/testing_tt_/status/1576502768604512256)

The URL MUST follow the exact format as below, without any tracking `?ctx=` parameters.

```tweet
---
retweet: https://twitter.com/testing_tt_/status/1576500683087302656
---

Whoops!
```

### [Reply](https://twitter.com/testing_tt_/status/1576500683087302656#m)

The URL MUST follow the exact format as below, without any tracking `?ctx=` parameters.

```tweet
---
reply: https://twitter.com/testing_tt_/status/1576496789741391872
---

You forgot about orange!
```

### [Media](https://twitter.com/testing_tt_/status/1576505043838181377#m)

You must upload the images you want to tweet into the `media` folder, which you can do by editing updating your PR's branch (open `media` folder and "Add file" -> "Upload file"). Make sure the filenames match your tweet content.

```tweet
---
media:
  - file: cat.jpg
    alt: A cat
  - file: dog.jpg
    alt: A dog
---

Here are some cute animals!
```

### [Poll](https://twitter.com/testing_tt_/status/1576496789741391872)

```tweet
---
poll:
  - Red
  - Blue
  - Green
---

What is your favorite color?
```

### [Threading](https://twitter.com/testing_tt_/status/1576508829965197314)

Threaded tweets are tweeted in series and separated by `---`.


```tweet
🧵 Here is a thread...

---
---
poll:
  - Banana
  - Mango
---

Which fruit is more delicious?

---
We hope you enjoyed this thread...
---
We certainly did.
```

## Maintainers

- TODO
