# salt-build-python3
Salt, Docker, Python3, Good Times.

---

This is just a simple sample for building Python3 from source, using Salt
orchestration.

# Try It Out

This assumes you have Docker and docker compose installed. And that you have
cloned this repository.

    docker-compose up -d

That'll start it up. Now, have your masters accept their minion's keys:

    docker exec salt-deb-master salt-key -Ay
    docker exec salt-centos-master salt-key -Ay

If you're too quick, you might need to re-run those commands. Once your keys
are accepted, run the orchestrations:

    docker exec salt-centos-master salt-run state.orchestrate orch.build-python3-7
    docker exec salt-deb-master salt-run state.orchestrate orch.build-python3-7

Now you can verify that your python installations are working. First on CentOS:

    docker exec salt-centos-minion /opt/python3.7/bin/python3 -m venv /tmp/testy
    docker exec salt-centos-minion /tmp/testy/bin/python -m pip install pymato
    docker exec -it salt-centos-minion /tmp/testy/bin/pymato track Testing

Then on Debian:

    docker exec salt-deb-minion /opt/python3.7/bin/python3 -m venv /tmp/testy
    docker exec salt-deb-minion /tmp/testy/bin/python -m pip install pymato
    docker exec -it salt-deb-minion /tmp/testy/bin/pymato track Testing

Sweet!
