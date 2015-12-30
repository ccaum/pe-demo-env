demo_pwd=`pwd`
username=`whoami`

git pull origin master

# Make sure we have sudo permissions
echo "Type in your local password (What you use to log into you Mac):"
sudo echo 'Updating PE Demo Environment......'

cd $demo_pwd/base/scripts
librarian-puppet install
cd $demo_pwd

sudo FACTER_username=$username puppet apply --modulepath $demo_pwd/base/scripts/modules $demo_pwd/base/scripts/demo_requirements.pp

vagrant plugin update

cat <<End-of-message
----------------------------------------
The demo environment is not up to update
----------------------------------------
End-of-message
