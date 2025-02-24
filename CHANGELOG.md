# Changelog

## 1.3.4 (2022-05-29)

- Use Faraday v2 (updated Octokit and other dependencies)

## 1.3.3 (2022-03-31)

- Fix bug with upcased user logins

## 1.3.2 (2022-03-17)

- Allow setting GitHub access using GITHUB_TOKEN env var

## 1.3.1 (2022-03-09)

- Fix error when loading metadata for papers with wrong path

## 1.3.0 (2022-03-02)

- Change branches using git-switch instead of git-checkout to remove ambiguaties. Requires Git >= 2.23

## 1.2.1 (2021-11-30)

- Changed metadata dates format to ISO
- Changed editor and reviewers metadata values to github login
- Removed languages from article metadata

## 1.2.0 (2021-11-23)

- Added reviews_repository_url to Journal
- Added article_metadata to Submission
- Added editor and paper dates lookup information in Submission
- Fixed error reading reviewers list from issue body

## 1.1.1 (2021-11-05)

- Added support for test-journal

## 1.1.0 (2021-10-29)

- Added Theoj::PublishedPaper object with metadata from Journal's API
- Added custom Error class

## 1.0.0 (2021-10-20)

- Added method to Journal to create paper_id from issue_id
- Added method to Journal to get a DOI based on a paper id
- Added languages to Paper
- Added authors info to Paper
- Author object
- Added ORCID validation
- Added Submission object, grouping a paper, a review issue and a journal
- Added paper depositing

## 0.0.3 (2021-10-08)

- Added metadata methods to Paper
- Added to ReviewIssue: editor, reviewers, archive, version
- New method to read any value from review's issue body
- Values read from issue boy will be empty if Pending or TBD
- Added journal config data for OpenJournals: JOSS and JOSE


## 0.0.2 (2021-09-22)

- Available objects: Theoj::Journal, Theoj::ReviewIssue and Theoj::Paper


## 0.0.1 (2021-09-22)

- Gem created

