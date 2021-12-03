wsl -s ubuntu
wsl apt update
wsl apt install `-y docker-ce docker-ce-cli containerd.io
wsl service docker start
wsl docker pull centos
wsl docker run `-t centos bash ls /
$dockerContainerID=(wsl docker container ls `-a `| grep `-i centos `| awk `'`{print `$1`}`')
New-Item -path "$env:USERPROFILE\WSL\centos" -ItemType Directory -Force
cd "$env:USERPROFILE\WSL\centos"
wsl docker export $dockerContainerID `> "./centos.tar"
wsl --import centos . .\centos.tar
#you can now access using "wsl -d centos"