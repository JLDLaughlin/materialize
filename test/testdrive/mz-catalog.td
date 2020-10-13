# Copyright Materialize, Inc. All rights reserved.
#
# Use of this software is governed by the Business Source License
# included in the LICENSE file at the root of this repository.
#
# As of the Change Date specified in that file, in accordance with
# the Business Source License, use of this software will be governed
# by the Apache License, Version 2.0.

> SHOW COLUMNS FROM mz_view_keys
Field      Nullable  Type
--------------------------
global_id  NO        text
column     NO        int8
key_group  NO        int8

> SHOW COLUMNS FROM mz_view_foreign_keys
Field         Nullable  Type
-----------------------------
child_id      NO        text
child_column  NO        int8
parent_id     NO        text
parent_column NO        int8
key_group     NO        int8

> SHOW COLUMNS FROM mz_catalog.mz_kafka_sinks
Field      Nullable  Type
--------------------------
global_id  NO        text
topic      NO        text

> SHOW COLUMNS FROM mz_catalog.mz_avro_ocf_sinks
Field      Nullable  Type
--------------------------
global_id  NO        text
path       NO        bytea

> SHOW COLUMNS FROM mz_catalog.mz_databases
Field     Nullable  Type
-------------------------
oid       NO        oid
id        NO        int8
database  NO        text

> SHOW COLUMNS FROM mz_catalog.mz_schemas
Field        Nullable  Type
----------------------------
oid          NO        oid
database_id  NO        int8
schema_id    NO        int8
schema       NO        text
type         NO        text

> SHOW COLUMNS FROM mz_catalog.mz_columns
Field          Nullable  Type
------------------------------
oid            NO        oid
global_id      NO        text
field_number   NO        int8
field          NO        text
nullable       NO        bool
type           NO        text

> SHOW COLUMNS FROM mz_catalog.mz_indexes
Field         Nullable  Type
-----------------------------
oid           NO        oid
global_id     NO        text
on_global_id  NO        text
field_number  YES       int8
expression    YES       text
nullable      NO        bool
seq_in_index  NO        int8
indexes       NO        text

> SHOW COLUMNS FROM mz_catalog.mz_tables
Field      Nullable  Type
--------------------------
oid        NO        oid
global_id  NO        text
schema_id  NO        int8
tables     NO        text

> SHOW COLUMNS FROM mz_catalog.mz_sources
Field      Nullable  Type
--------------------------
oid        NO        oid
global_id  NO        text
schema_id  NO        int8
sources    NO        text

> SHOW COLUMNS FROM mz_catalog.mz_sinks
Field      Nullable  Type
--------------------------
oid        NO        oid
global_id  NO        text
schema_id  NO        int8
sinks      NO        text

> SHOW COLUMNS FROM mz_catalog.mz_views
Field      Nullable  Type
--------------------------
oid        NO        oid
global_id  NO        text
schema_id  NO        int8
views      NO        text
