# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

##  API
#### location create
curl --request POST \
  --url http://localhost:3000/api/v1/locations \
  --header 'Content-Type: application/json' \
  --cookie '__profilin=p%253Dt; _rtti_web_session=aJ%252BfkHiXH%252BIOVyejsaDgcbwgAZhdaPGjZVhZ7ERs5wVvM5PLj0NGgWF7egzecYv8PPbozA2geV14I%252Bv%252FsI9TV0Jbdu61r%252FSBxb0EqhYDf6qEM48%252BGzeS1q64CddewSZIhw2TUA2GnkOGnqH53UaSkyziq7dVAuXxuLyZ6DLM5Xuy5Zd0aWkwwoKWaWyYVrUghpS3hMCb5Y%252FX--Lx0RRYpJnVQclQ16--7J87%252BIWBKGYgOckq6C4FTg%253D%253D; _tdcid-console_session=f8ZN4BuuVxNHk3uwVkKa0RmnvpWDXbTLTb8R7eCSDgPVa2JejmrmP%252FLCHIUYbYC5zxHmZb%252BZ0F4rIWizNW4pLYXcOazXrh419tRjYb%252FmTLb3Pb40kVg6HGmA0kH6n8%252Bcaq2KRRPyjvmoSoYbYqiCdD3qUVkkfjkwx9%252FfUM9j5CaxN8CfRp9tXuSTzwRdKfY3MoFypaoPkd%252FsfvOtwHRGJN0mcT7iWdeuS9ojRNoevW7AlO8WC0X5fr8YV2A%252BiAA9goCpnl%252FxjGnt%252FOiF8fdX0uds5MZu8YKlJHiqsuRu--uO3l8vHI4EBl3pCw--DKCARDPpLCm8gHN8fi1lnQ%253D%253D' \
  --data '
  {
      "latitude": "10.04",
      "longitude": "10.04",
      "altitude": "10.04",
      "temperatureC": "14"
  }
  '

#### location show
curl --request GET \
  --url http://localhost:3000/api/v1/locations/103 \
  --cookie '__profilin=p%253Dt; _rtti_web_session=aJ%252BfkHiXH%252BIOVyejsaDgcbwgAZhdaPGjZVhZ7ERs5wVvM5PLj0NGgWF7egzecYv8PPbozA2geV14I%252Bv%252FsI9TV0Jbdu61r%252FSBxb0EqhYDf6qEM48%252BGzeS1q64CddewSZIhw2TUA2GnkOGnqH53UaSkyziq7dVAuXxuLyZ6DLM5Xuy5Zd0aWkwwoKWaWyYVrUghpS3hMCb5Y%252FX--Lx0RRYpJnVQclQ16--7J87%252BIWBKGYgOckq6C4FTg%253D%253D; _tdcid-console_session=f8ZN4BuuVxNHk3uwVkKa0RmnvpWDXbTLTb8R7eCSDgPVa2JejmrmP%252FLCHIUYbYC5zxHmZb%252BZ0F4rIWizNW4pLYXcOazXrh419tRjYb%252FmTLb3Pb40kVg6HGmA0kH6n8%252Bcaq2KRRPyjvmoSoYbYqiCdD3qUVkkfjkwx9%252FfUM9j5CaxN8CfRp9tXuSTzwRdKfY3MoFypaoPkd%252FsfvOtwHRGJN0mcT7iWdeuS9ojRNoevW7AlO8WC0X5fr8YV2A%252BiAA9goCpnl%252FxjGnt%252FOiF8fdX0uds5MZu8YKlJHiqsuRu--uO3l8vHI4EBl3pCw--DKCARDPpLCm8gHN8fi1lnQ%253D%253D'
