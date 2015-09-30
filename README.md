If/when I have the time, I'd like to start using the Raspberry Pi for simple projects. like the one I've just quickly put together.

## Temperature log

Run a command on the PI to measure the temperature at certain intervals and upload it to a git repository. Maybe Dropbox. But will still use GitHub for the codes.

The following piece of code is useful when you want to start a process via ssh and doesn't want the Pi to stop working on it as you exit.

```
$ nohup ./long_running_process.sh &
$ exit
```

