#!/usr/bin/env python
from random import randint
from datetime import datetime as dt
import rospy
from chat.msg import Message

def spawn_listener(handle: str):
    def listener(data: Message):
        if data.author == handle: return
        time = dt.utcfromtimestamp(data.time).strftime("%I:%M:%S %p")
        print(f'\r[{time}] {data.author}#{data.authorId}: {data.message}' + '\nchat> ', end='')
    return listener

def node():
    handle = input("Enter a chat handle: ")
    authorId = randint(1000, 9999)

    subcriber = rospy.Subscriber('chat', Message, spawn_listener(handle))
    publisher = rospy.Publisher('chat', Message, queue_size=10)
    print(f"\nConnecting to chat topic on {subcriber.resolved_name} as {handle}#{authorId}.\n")

    rospy.init_node(f'chat_{handle}_{authorId}', anonymous=True)

    while not rospy.is_shutdown():
        print("chat> ", end='')
        message = Message()
    
        message.author = handle
        message.authorId = authorId
        message.message = input()
        message.time = int(rospy.get_time())

        publisher.publish(message)
    

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass
