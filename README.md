# Plex Media Server Cookbook

Cookbook for Setting up Plex Media Server on a RHEL Linux Machine.

***Supports***

- Centos7

## Contributing

### Before Pushing

- Run with bundler.

   ```sh
   bundle install
   ```

- Verify Test Kitchen passes.

   ```sh
   bundle exec kitchen list
   bundle exec kitchen create
   bundle exec kitchen converge
   bundle exec kitchen verify
   bundle exec kitchen login
   bundle exec Kitchen destroy
   ```

- Run rspec.

   ```sh
   bundle exec rspec
   ```

- Run cookstyle.

   ```sh
   bundle exec cookstyle
   ```

- Run markdownlint.

   ```sh
   bundle exec mdl *.md
   ```

## Notes

### How to Set up server manually

- Install centos 7.
- Use yum to update/patch the server.
- Install plex.
- Install media packages.
- Install HandBrak-CLI
- Create plexmedia user.
- Set /home to 755.
- Set /home/plexmedia to 755. ALL OTHER USERS SHOULD BE LOCKED DOWN TO USER.
- Create Plex folder Structure.
   |_Media
     |_Movies
   |_Scan
     |_Movies
     |_Unknown
   |_Scripts
- Drop Scripts into the Scripts folder.
- Make sure permissions are correct on all folders/scripts.
- Create aliases for the scripts.
- Create firewall rule to allow for plex ports.
- Start/Restart firewalld.
- Start/Restart the plex server.
- Print message for whether or not server needs reboot.
