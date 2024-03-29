# telegraf-psi

[![Actions](https://github.com/x70b1/telegraf-psi/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/x70b1/telegraf-psi/actions)
[![Contributors](https://img.shields.io/github/contributors/x70b1/telegraf-psi.svg)](https://github.com/x70b1/telegraf-psi/graphs/contributors)
[![License](https://img.shields.io/github/license/x70b1/telegraf-psi.svg)](https://github.com/x70b1/telegraf-psi/blob/master/LICENSE)

A [Telegraf](https://github.com/influxdata/telegraf) plugin to collect [Pressure Stall Information](https://www.kernel.org/doc/html/latest/accounting/psi.html) stats.


## Configuration

```ini
[[inputs.exec]]
  command = "sh /opt/telegraf/telegraf-psi.sh"
  data_format = "influx"

  interval = "10s"
```


## Output

```sh
# sh /opt/telegraf/telegraf-psi.sh
pressure,resource=cpu,share=some avg10=0.22,avg60=0.32,avg300=0.34,total=43903342529
pressure,resource=memory,share=some avg10=0.00,avg60=0.00,avg300=0.00,total=2493
pressure,resource=memory,share=full avg10=0.00,avg60=0.00,avg300=0.00,total=11
pressure,resource=io,share=some avg10=0.00,avg60=0.00,avg300=0.00,total=3610026058
pressure,resource=io,share=full avg10=0.00,avg60=0.00,avg300=0.00,total=316119428
```
