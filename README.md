RazorCMS has disappeared from the internet since making this, it's time to let it rest. Archived 4/13/23

# razordock v0.3
Dockerized implementation of RazorCMS http://www.razorcms.co.uk/

# Pull me!
`docker pull asciifaceman/razordock`
https://hub.docker.com/r/asciifaceman/razordock/

# build me!
`./build.sh VERSION`

# run me!
`docker run -d -p 80:80 asciifaceman/razorcms:latest`

# Make me persistent!
After having run the container once:
```
docker stop ${containerid}
docker cp ${containerid}:/razorcms/storage <path on host>
docker cp ${containerid}:/razorcms/theme <path on host>
docker run -d -v <path on host>:/razorcms/storage \
	-v <path on host>:/razorcms/theme -p 80:80 asciifaceman/razorcms:latest
```

# Upgrade me!
If you have your bind mount already created
```
docker stop ${containerid}
docker pull asciifaceman/razorcms:latest
goto run me!
```

# notes
All of this will be made... nicer
