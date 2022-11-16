 #!/bin/bash
 git checkout gh-pages
 git reset --hard origin/master
 npm run build
 cp -r dist/* .
 echo 'shenandoahbitcoin.club' > CNAME
 git add -A .
 git commit -a -m 'gh-pages update'
 git commit -a -m 'gh-pages update' --no-verify
 git push origin gh-pages --force
 git checkout master