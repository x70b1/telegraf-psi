# telegraf-psi

[![Codecheck](https://github.com/x70b1/telegraf-psi/workflows/Codecheck/badge.svg?branch=master)](https://github.com/x70b1/telegraf-psi/actions)
[![GitHub contributors](https://img.shields.io/github/contributors/x70b1/telegraf-psi.svg)](https://github.com/x70b1/telegraf-psi/graphs/contributors)
[![license](https://img.shields.io/github/license/x70b1/telegraf-psi.svg)](https://github.com/x70b1/telegraf-psi/blob/master/LICENSE)

A telegraf plugin to collect [Pressure Stall Information](https://www.kernel.org/doc/html/latest/accounting/psi.html) stats.


## Configuration

```
[[inputs.exec]]
  command = "sh /opt/telegraf/telegraf-psi.sh"
  data_format = "influx"

  interval = "10s"
```


## Output

```
# sh /opt/telegraf/telegraf-psi.sh
pressure,resource=cpu,share=some avg10=0.22,avg60=0.32,avg300=0.34,total=43903342529
pressure,resource=memory,share=some avg10=0.00,avg60=0.00,avg300=0.00,total=2493
pressure,resource=memory,share=full avg10=0.00,avg60=0.00,avg300=0.00,total=11
pressure,resource=io,share=some avg10=0.00,avg60=0.00,avg300=0.00,total=3610026058
pressure,resource=io,share=full avg10=0.00,avg60=0.00,avg300=0.00,total=316119428
```
