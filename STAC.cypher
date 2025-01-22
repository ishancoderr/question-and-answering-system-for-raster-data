CREATE 
// Basic information about satellite data
(floodmasks:BASIC_INFORMATIONS {
    name: "D4H",
    title: "Sentinel-1 Floodmasks (Data4Human)",
    description: "Sentinel-1 based floodmask products processed within the project Data4Human",
    license: "CC-BY-NC-4.0",
    platform: "Sentinel-1",
    sensor_type: "RADAR",
    spatial_extent: [-33.0826, -13.3956, -24.9789, 40.9334],
    temporal_extent_start: "2020-01-08T16:22:00Z"
}),
(S2_L3A_WASP:BASIC_INFORMATIONS {
    name: "S2_L3A_WASP",
    title: "Sentinel-2 L3A Monthly WASP Products",
    description: "Sentinel-2 L3A WASP Products of Germany processed by DLR using the WASP processor",
    license: "CC-BY-4.0",
    platform: "Sentinel-2",
    platform_serial_identifier: "A/B",
    instrument: "MSI",
    composite_type: "P1M",
    orbit_type: "LEO",
    sensor_type: "OPTICAL",
    doi: "10.15489/4hcq6dgkj648",
    spatial_extent: [5.7635, 46.7937, 15.1528, 55.9456],
    temporal_extent_start: "2020-01-08T16:22:00Z"
}),
(S2_L2A_MAJA:BASIC_INFORMATIONS {
    name: "S2_L2A_MAJA",
    title: "Sentinel-2 L2A MAJA Products",
    description: "Sentinel-2 L2A Products of Germany processed by DLR using the MAJA processor",
    license: "CC-BY-4.0",
    platform: "Sentinel-2",
    platform_serial_identifier: "A/B",
    instrument: "MSI",
    orbit_type: "LEO",
    sensor_type: "OPTICAL",
    doi: "10.15489/ifczsszkcp63",
    spatial_extent: [5.7635, 46.7937, 15.1528, 55.9456],
    temporal_extent_start: "2020-01-08T16:22:00Z"
}),


//Create Provider Nodes
(esa:PROVIDER {name: "ESA"}),
(eoc_geoservice:PROVIDER {name: "EOC Geoservice"}),
(dlr_technology_institute:PROVIDER {name: "DLR/EOC Remote Sensing Technology Institute, Photogrammetry and Image Analysis"}),
(dlr_geo_risks:PROVIDER {name: "DLR/EOC Geo-Risks and Civil Security"}),

//Create relatinships with provider node and  data node
(esa)-[:PROVIDES]->(S2_L3A_WASP),
(eoc_geoservice)-[:PROVIDES]->(S2_L3A_WASP),
(dlr_technology_institute)-[:PROVIDES]->(S2_L3A_WASP),
(esa)-[:PROVIDES]->(S2_L2A_MAJA),
(eoc_geoservice)-[:PROVIDES]->(S2_L2A_MAJA),
(dlr_technology_institute)-[:PROVIDES]->(S2_L2A_MAJA),
(dlr_geo_risks)-[:PROVIDES]->(floodmasks)