# dev-doorkeeper-proxy

### Installation

1. install dependencies
```
bundle install
```

2. add doorkeeper secrets
```
cd config
ln -s ../../bima-secret-service/doorkeeper-proxy/secrets.yml
```


### Usage

```
BIMA_USER_ID=YOUR_CONTACT_ID STAGE=integration bundle exec rails s
```
