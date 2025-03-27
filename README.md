# grafana-alloy-oracledb-custom-metrics

This is a simple demonstration of how to use Grafana Alloy with the OracleDB Exporter including custom metrics against two OracleDB instances.

## Prerequisites

This example assumes you have the following installed:

- Docker
- Docker Compose

## Getting Started

1. Clone this repository

    ```bash
    git clone https://github.com/colinedwardwood/grafana-alloy-oracledb-custom-metrics.git
    ```

2. Change into the directory

    ```bash
    cd grafana-alloy-oracledb-custom-metrics
    ```

3. Update your Grafana Cloud connection details.

    Copy the file `./alloy-configuration-files/sample.env` to `./alloy-configuration-files/.env`, and update the necessary fields:

    ```bash
    cp ./alloy-configuration-files/sample.env ./alloy-configuration-files/.env
    ```

4. Start the services

    ```bash
    docker-compose up -d
    ```

5. Validate the Metrics are being collected

    a. Navigate to your Grafana Cloud instance.
    b. Click on "Explore" in the left-hand menu.
    c. Select the Prometheus data source.
    d. Run the following queries to see the custom metrics:

    ```promql
    oracledb_custom_session_cpu{instance="alloy.demo.internal", job="integrations/oracledb"}
    ```

    ```promql
    oracledb_cache_hit_ratio_percentage{instance="alloy.demo.internal",job="integrations/oracledb"}
    ```
