# README

Tachyon, a rails app to help with medical records for non-profit orgs

The name is from the same anime waifu from [uma musume](https://umamusu.wiki/Agnes_Tachyon/Gallery#/media/File:Img_main02.png)

## Ruby version

3.3.0

## System dependencies

### System

- Redis
- Elasticsearch
- PostgreSQL
- Bun

### Gems

- [bullet](https://github.com/flyerhzm/bullet)
- [vite_rails](https://github.com/ElMassimo/vite_ruby)
- [sidekiq](https://github.com/sidekiq/sidekiq)
- [devise](https://github.com/heartcombo/devise)
- [searchkick](https://github.com/ankane/searchkick)
- [rspec](https://rspec.info/)
- [pundit](https://github.com/varvet/pundit)

### Frontend

Note: All of the dependencies run under bun and bunx instead of node

- [TailwindCSS](https://tailwindcss.com/)

## Configuration

## Database creation

`bundle exec rails db:create`

## Database initialization

`bundle exec rails db:setup`

## How to run the test suite

RSpec is used to do tests across the app, the other gems of choice to further
improve the testing experience are:

- factory_bot_rails
- faker
- shoulda-matchers
- simplecov
- database_cleaner-active_record
- capybara
- selenium_webdriver

## Services (job queues, cache servers, search engines, etc.)

- Sidekiq, more T.B.D.

## Deployment instructions

T.B.D.
