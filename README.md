# embulk-from-mysql-to-s3
Embulk docker container export csv data from mysql to AWS S3. 

# install
```
git clone git@github.com:akitana-airtanker/embulk-from-mysql-to-s3.git
cd embulk-from-mysql-to-s3
docker build -t embulk-from-mysql-to-s3 .
```

# use
```
docker run -e DB_HOST=xxxx -e DB_USER=xxxx -e DB_PASS=xxxx -e DB_NAME=xxxx -e DB_QUERY=xxxx -e S3_PASS=xxxx -e S3_PREFIX=xxxx -e S3_BUCKET=xxxx --rm -it embulk-from-mysql-to-s3
```
