#!/usr/bin/env python
import rospy
import numpy as np
from beginner_tutorials.msg import Num, NumArray


def talker():
    pub = rospy.Publisher('test1', Num, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(2)
    while not rospy.is_shutdown():
        message = Num()
        message.xpos = 5
        message.ypos = 10
        a = np.array([message.xpos, message.ypos])
        a = 4 * a
        message.xpos = a[0]
        message.ypos = a[1]
        # rospy.loginfo(message)
        pub.publish(message)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
