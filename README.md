# README
Things you may want to cover:

* Ruby version
rvm install 3.0.2




##  API
#### location create
```sh

curl --request POST \
  --url http://localhost:3000/api/v1/locations \
  --header 'Content-Type: application/json' \
  --data '
  {
      "latitude": "10.04",
      "longitude": "10.04",
      "altitude": "10.04",
      "temperatureC": "14"
  }
  '

```

#### location show
```sh

curl --request GET \
  --url http://localhost:3000/api/v1/locations/103 \

```