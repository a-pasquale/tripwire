Tripwire-Counter
================

This arduino sketch uses a photoresistor and a laser to detect objects passing between the laser and the sensor.  A counter is incremented when the beam is broken and can be read using the serial port connection.

The circuit diagram looks like this:
![](http://www.ladyada.net/images/sensors/cdslitetestdiag.gif)
![](http://www.ladyada.net/images/sensors/cdsliteschem.gif)

Images courtesy of [Lady Ada](http://www.ladyada.net/wiki/tutorials/learn/sensors/cds.html).

I've also added a 47 ohm resistor between 3.3v and reset to prevent
the board from reseting on serial port connectino.  See [this
thread](http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1213719666/28#28) for discussion.
