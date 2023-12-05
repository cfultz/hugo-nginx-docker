# Hugo nginx Docker

This ``Dockerfile`` was created to host my static [Hugo](https://gohugo.io) website over at [CFultz.pro](https://cfultz.pro) to be a proof of concept that I could do it. 

I have attached my ``deploy.sh`` that I used as well to create my site, build the image and deploy it to my local ``Docker`` environment.

## Build


``Note: you will need to have Docker and Hugo already installed``

In your Hugo website directory, process the following:

```
git clone https://github.com/cfultz/hugo-nginx-docker.git
chmod +x deploy.sh
./deploy.sh
```

## Using the pre-built from DockerHub

TODO

## License
This work by Caleb Fultz aka [cfultz](https://github.com/cfultz) is licensed under the [``Creative Commons CC0 1.0``](https://creativecommons.org/publicdomain/zero/1.0/legalcode.en) License. All tools and other works utilized are licensed under their respective licenses and copyrights.