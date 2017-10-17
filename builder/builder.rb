`git config --global core.sshCommand 'ssh -o StrictHostKeyChecking=no -i /root/.ssh/github' -vvvv`

`mkdir /unbuilt-sites/`
`rm -Rf /sites/nambawan`
`mkdir /sites/nambawan`
`chown jekyll /sites/nambawan`

`rm -Rf /unbuilt-sites/nambawan`
`git clone -v git@github.com:f3nry/nambawanadventures.git /unbuilt-sites/nambawan`
puts `ls -lh /sites/nambawan`
puts `jekyll build -d /sites/nambawan -s /unbuilt-sites/nambawan`
