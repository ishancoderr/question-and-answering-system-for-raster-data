CREATE 
// Basic information about satellite data
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

// Create unique city nodes
(CitySiegen:CITY {name: "Siegen"}),
(CityMarburg:CITY {name: "Marburg"}),
(CityKorbach:CITY {name: "Korbach"}),
(CityGiesen:CITY {name: "Giesen"}),
(CityTrier:CITY {name: "Trier"}),
(CityDaun:CITY {name: "Daun"}),
(CityKoblenz:CITY {name: "Koblenz"}),
(CityIdarOberstein:CITY {name: "Idar-Oberstein"}),
(CityFrankfurt:CITY {name: "Frankfurt"}),
(CityDarmstadt:CITY {name: "Darmstadt"}),
(CityWiesbaden:CITY {name: "Wiesbaden"}),

//create the tile node 
(SENTINEL2A_20191116_103650_357:TILES {name:'SENTINEL2A_20191116_103650_357', dataset_name: "S2_L2A_MAJA", country: "Germany", downloadLink:'https://download.geoservice.dlr.de/S2_L2A_MAJA/'}),
(SENTINEL2A_20191116_103708_854:TILES {name:'SENTINEL2A_20191116_103708_854',dataset_name: "S2_L2A_MAJA", country: "Germany", downloadLink:'https://download.geoservice.dlr.de/S2_L2A_MAJA/'}),
(SENTINEL2A_20191116_103704_633:TILES {name:'SENTINEL2A_20191116_103704_633',dataset_name: "S2_L2A_MAJA", country: "Germany", downloadLink:'https://download.geoservice.dlr.de/S2_L2A_MAJA/'}),

// Establish LOCATED_IN relationships
(CitySiegen)-[:LOCATED_IN]->(SENTINEL2A_20191116_103650_357),
(CityMarburg)-[:LOCATED_IN]->(SENTINEL2A_20191116_103650_357),
(CityKorbach)-[:LOCATED_IN]->(SENTINEL2A_20191116_103650_357),
(CityGiesen)-[:LOCATED_IN]->(SENTINEL2A_20191116_103650_357),
(CityTrier)-[:LOCATED_IN]->(SENTINEL2A_20191116_103708_854),
(CityDaun)-[:LOCATED_IN]->(SENTINEL2A_20191116_103708_854),
(CityKoblenz)-[:LOCATED_IN]->(SENTINEL2A_20191116_103708_854),
(CityIdarOberstein)-[:LOCATED_IN]->(SENTINEL2A_20191116_103708_854),
(CityFrankfurt)-[:LOCATED_IN]->(SENTINEL2A_20191116_103704_633),
(CityDarmstadt)-[:LOCATED_IN]->(SENTINEL2A_20191116_103704_633),
(CityWiesbaden)-[:LOCATED_IN]->(SENTINEL2A_20191116_103704_633),

//Create relatinships with provider node and  data node
(esa)-[:PROVIDES]->(S2_L3A_WASP),
(eoc_geoservice)-[:PROVIDES]->(S2_L3A_WASP),
(dlr_technology_institute)-[:PROVIDES]->(S2_L3A_WASP),
(esa)-[:PROVIDES]->(S2_L2A_MAJA),
(eoc_geoservice)-[:PROVIDES]->(S2_L2A_MAJA),
(dlr_technology_institute)-[:PROVIDES]->(S2_L2A_MAJA),

// Establish relationships between TILES and BASIC_INFORMATIONS
(SENTINEL2A_20191116_103650_357)-[:HAS_INFORMATION]->(S2_L2A_MAJA),
(SENTINEL2A_20191116_103708_854)-[:HAS_INFORMATION]->(S2_L2A_MAJA),
(SENTINEL2A_20191116_103704_633)-[:HAS_INFORMATION]->(S2_L2A_MAJA);