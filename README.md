### What is this repo?

Dockerized [ELK](https://www.elastic.co/elk-stack) stack with [nginx](https://www.nginx.com/) reverse proxy and ACL manager for Kibana.

### Why was it created?

[Post](http://saurabh-hirani.github.io/writing/2018/08/04/elk-nginx-acl) citing the reasons.

### How was it created?

This repo is created on the foundation of these 2 repos:

[deviantony/docker-elk](https://github.com/deviantony/docker-elk)

[jmyoung/docker-elk](https://github.com/jmyoung/docker-elk)

with some minor changes.

### What does it do?

This repo brings up an ELK stack + nginx setup with some basic ACL.

### How can I use it?

1. Open terminal-1 and run the following commands:

  ```
  # ./init.sh
  ```

2. Once above containers are up and running, open terminal-2 and run the following
commands. They might take a few minutes:

  ```
  # ./get_data.sh
  # ./load_data.sh
  # ./create_index_patterns.sh
  # ./set_default_index_pattern.sh
  ```

Read about [loading sample data](https://www.elastic.co/guide/en/kibana/current/tutorial-load-dataset.html)
to know more about what the above scripts do.

3. Once the data is loaded, open terminal-3 and start tailing nginx logs

  ```
  # docker-compose logs -f nginx
  ```

4. Open your browser and in 3 different tabs open these urls one by one:


| URL                   | username | password | description           | Permissions      |
| --------------------- | -------- | -------- | --------------------- | ---------------- |
| http://localhost:8080 | kibanaro | kibanaro | Kibana read only user | no admin, no create, no update, no delete - only read |
| http://localhost:8081 | kibana   | kibana   | Kibana normal user    | no admin, only create, read, update, delete on search, visualization and dashboard | 
| http://localhost:8082 | admin    | admin    | Kibana admin user     | admin + above user privileges |

5. Connect to the nginx container:

  ```
  # docker exec -it $(docker ps -q --filter 'name=_nginx' ) bash
  # cd /etc/nginx/conf.d
  # vim kibana.conf
  ```

6. Play a bit with the UI in the **Discover** tab.

### What now?

- Understand the behaviour in step 3. against the config in step 4. For example:
  - Try to delete an index pattern (Management -> Index Pattern) as kibanaro user
  - Try to change the admin settings (Management -> Advanced settings) as kibana user

6. Once done, cleanup your setup (stop and remove containers, remove the uploaded data):

  ```
  # ./cleanup.sh
  ```
