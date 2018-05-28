CREATE TABLE `users` (
  `id` INTEGER PRIMARY KEY NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `authorization_endpoint` varchar(255) DEFAULT NULL,
  `token_endpoint` varchar(255) DEFAULT NULL,
  `micropub_endpoint` varchar(255) DEFAULT NULL,
  `micropub_media_endpoint` varchar(255) NOT NULL DEFAULT '',
  `access_token` text,
  `token_scope` varchar(255) DEFAULT NULL,
  `token_response` text,
  `micropub_success` tinyint(4) DEFAULT '0',
  `location_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `enable_array_micropub` tinyint(4) NOT NULL DEFAULT '1',
  `device_code` varchar(10) DEFAULT NULL,
  `device_code_expires` datetime DEFAULT NULL
);

CREATE TABLE `entries` (
  `id` INTEGER PRIMARY KEY NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `tz_offset` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `canonical_url` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) NOT NULL DEFAULT '',
  `micropub_success` tinyint(4) DEFAULT NULL,
  `micropub_response` text
);

-- CREATE FUNCTION `gc_distance`(lat1 DOUBLE, lng1 DOUBLE, lat2 DOUBLE, lng2 DOUBLE) RETURNS double DETERMINISTIC
-- RETURN ( 6378100 * ACOS( COS( RADIANS(lat1) ) * COS( RADIANS(lat2) ) * COS( RADIANS(lng2) - RADIANS(lng1) ) + SIN( RADIANS(lat1) ) * SIN( RADIANS(lat2) ) ) );

