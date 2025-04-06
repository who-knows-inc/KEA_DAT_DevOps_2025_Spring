# Monitoring

**Type**: Group work

**Motivation**: Understand your system better in order to identify the pain points and improve it.

---

## Requirements

You have already setup health monitoring with Postman monitoring and while health monitoring of the system is fine, your focus should be to gather telemetry from users. Take on the role as a DevOps detective that asks questions in order to investigate how your system is being used and how it is bringing value to the users.

During the exam I will ask you to explain why you choose to monitor the metrics that you did. Though only a single person could set up monitoring I suggest that each group starts this assignment with a meeting where you discuss what to monitor for.

It's an impressive sign if your setup makes you realize something that helps you improve your system. Feel free to bring it up in the final presentation.

---

## Prometheus Client Libraries

Just like with everything else, the only requirement is that you must have monitoring. Not to do it specifically with Prometheus. But Prometheus is a good choice. It offers official client libraries for many languages: 

  * Go
  * Java or Scala
  * Python
  * Ruby
  * Rust

Unofficial third-party client libraries:

  * Bash
  * C and C++
  * Common Lisp
  * Dart
  * Elixir and Erlang
  * Haskell
  * Lua for Nginx and Tarantool
  * .NET / C#
  * Node.js
  * OCaml
  * Perl
  * PHP
  * R

For more information see: https://prometheus.io/docs/instrumenting/clientlibs/

Once Prometheus can extract metrics, Grafana or similar can use Prometheus as a data source and is agnostic to the programming language. 

---

## [Highly_Optional] Alerts

It is possible to setup alerts in Grafana. You can make it work with KEAs teams by setting up a webhook. This is done by clicking on the apps button and selecting `Incoming Webhook`. Grafana can then post alerts to in the Teams channel.

---

## Docker Example + PR request

In the [Docker Docs](https://docs.docker.com/samples/prometheus/) own example, they have defined configuration in `datasource.yml` for Grafana and a `prometheus.yml` for Prometheus. It can be found [here](https://github.com/docker/awesome-compose/tree/master/prometheus-grafana)

If you have a breakthrough in your monitoring setup that you are proud of you can either:

1. Expand the `whoknows_variations` tutorial with a new section and make a PR.

2. Reach out to me and I will consider adding it to the tutorial.

---

## Document your dashboards

The simulation will be run again before the exam to repopulate your graphs with data.

To be on the safe side, take screenshots of your dashboards during the semester for the exam.

---

## After thought

It is sufficient to setup only one dashboard for the course but beware that in companies the better practice is to create a dashboard per service (frontend, backend, database etc.).
