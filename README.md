Need to import id on remote system 
```
ssh-import-id <lp-name>
```

Then run
```
ansible-playbook -i hosts playbook.yml -vvv --ask-sudo-pass
```
