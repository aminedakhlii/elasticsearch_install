#! /bin/bash
sed -i 's/#cluster.name: .*/cluster.name: dataraf/' $2
sed -i 's/#node.name: .*/node.name: '$1'/' $2
sed -i 's/#network.host: .*/network.host: 0.0.0.0/' $2
sed -i 's/#http.port: .*/http.port: 9200/' $2
sed -i 's/#discovery.seed_hosts: .*/discovery.seed_hosts: ["192.168.1.10", "192.168.1.11", "192.168.1.28", "192.168.1.29", "192.168.1.32", "192.168.1.34", "192.168.1.35", "192.168.1.36"]/' $2
sed -ri 's/#cluster.initial_master_nodes: .*/cluster.initial_master_nodes: ["master\-1"]/' $2
