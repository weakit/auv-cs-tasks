### AUV Final Task
## ROS Task

This folder is a catkin workspace that contains one package, with one singular python node: `chatter`.

If I remember correctly it was a requirement to name the package `chat_bot` but I didn't like that name so I called it `chat` instead.  
Disqualify me.

Anyways, this node lets you (somewhat) have a conversation with other people (nodes), on the same topic.  
Each node has a publisher and subscriber, and lets you participate in an active conversation.

Make sure you do usual procedure (after starting roscore):
```sh
$ catkin_make
$ source ./devel/setup.bash   # if you're using bash
```

And then run the node as you would:
```sh
rosrun chat chatter.py
```

This node should ask you for a chat "handle" and it should be pretty lonely after that.   
Now repeat the above procedure and start up another node with a different handle, and you'll have two nodes.   
Switch terminals and now you can chat with yourself—have fun!
