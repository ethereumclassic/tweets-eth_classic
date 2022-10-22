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

On Twitter, `@eth_classic` was the Ethereum Classic community's verified account to which access was lost. With this renewed `@eth_classic` account, our aim is to empower the community to once again build a Twitter following and reputation that will allow for verified account status in the future. Community members submitting tweet suggestions to `@eth_classic` should take this into consideration. Suggested tweets should remain professional, relevant and neutral. 

In order to be approved, the contents of an `eth_classic` tweet must adhere to the following rules. If the tweet you wish to submit does not meet these restrictions, check out the [`@ETC_Network`](https://github.com/ethereumclassic/tweets-ETC_Network) Twitter account. While also a community account, `@ETC_Network` has a more relaxed set of rules for content and may allow memes and other forms of engagement driving content.

If you have suggestions to amend these rules, please create a new issue in this repository.

### Basics

All tweets must conform to the Twitter rules and policies found at https://help.twitter.com/en/rules-and-policies. Additionally;

- Dignity: No obscenities, explicit language, racism, sexism, etc.
- Neutrality: No attacking or promoting of non-ETC projects, no drama.
- Seriousness: No memes, jokes, quips, hot takes, etc.
- Accuracy: No linking to overly opinionated, biased or unverifiable information.
- Relevance: No spam, non-ETC related content, limit tweets about the same topic.
- Subtlety: Don't tell people to buy ETC directly, instead tell them *why*.
- Safety: No links to scams, no encouraging the purchase of assets.

### Content

The `@eth_classic` account serves to inform it’s followers in an unbiased way about interesting happenings in the Ethereum Classic world. It is a pillar of neutrality, a honey badger that does not care about external drama, and serves to inform others about it’s own situation, protocol updates, and other relevant news.

Tweets from this account should be written from the point of view of the ETC blockchain itself. If a proposed tweet cannot pass a test of "If it had a voice, would the chain itself say..." then that tweet would not be acceptable.

Acceptable topics to Tweet about include but are not limited to:

- Important development updates such as Hard Fork announcements.
- ETC philosophy and principles, their benefits, and quotes from the website.
- Benefits of ETC technical properties (such as PoW, Sound Money) compared to other blockchains (but must not ‘dunk’ on other projects).
- Keeping followers in the loop about important community discussions (e.g. ECIPs, ongoing debates).
- Community events, conferences, meetups, initiatives, discussions.
- Interesting technical analysis of network attributes such as hashrate, throughput, price movement.
- Ecosystem updates, new projects, wallets, services, exchange listings (see next below).

### Third Party Projects

- Must be relevant to ETC.
- Can be retweets, but must contain disclaimers (e.g. do your own research).
- **Large** projects from **established** teams that are well known to the crypto-Twitter community and have been operating for at least 2 years are allowed. E.g.
  - Binance listing USDT Tether tokens on the ETC blockchain
  - Chainlink deploys to ETC
  - Grayscale lists ETC ETF

### Retweets

- Retweeted content must follow the above rules, and/or include required disclaimer within retweet message.
- Must not excessively retweet the same account (up to 5 per month)

## ETCtweets

- For tweets submitted via #ETCtweets, include "This tweet was suggested by @USSER via #ETCtweets." either in the retweet text, or in a follow up message via a thread; see [Threading](#threading).

### Formatting and Style

- Neutral, factual writing style.
- Double spacing between new sentences.
- Correct use of capitalization.
- Reasonable use of Hashtags (up to 3 hashtags), e.g. #EthereumClassic, $ETC.
- Use of relevant images is encouraged (see Media style).
- Use of appropriate Emojis is encouraged.

### Review Process

For maintainers, during the review process; 

- **Do not trigger Actions from Pull Reqeusts that suspiciously modify the [workflow](/.github/workflows/twitter-together.yml) file**. Always check that the PR is only adding tweet or media files. Do not reopen a PR that has suspiciously modified the workflow file.
- Ensure that the generated preview is formatted correctly. The preview must be triggered manually if the submission comes from outside contributors.
- Maintainers should remain civil when discussing or reviewing submissions and should work towards creating the best tweets in the common interest.
- Either come to agreement in the PR about wording or appropriateness, or submit a new Pull Request.
- Do not edit original PR creator’s Tweet, other than to fix formatting or typos.
- Ensure that Pull Request Tweets adhere to the rules above. If it does, you can approve it:

![image](https://user-images.githubusercontent.com/1696942/196016734-463f4d00-5600-4468-aac5-96ac9463697b.png)

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
