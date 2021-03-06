/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

-- This provides a single non-empty proc with non-nullable column of all supported
-- types

create table bar(
  intcol INTEGER NOT NULL,
  longcol LONG INT NOT NULL,
  realcol REAL NOT NULL,
  boolcol BOOL NOT NULL,
  textcol TEXT NOT NULL,
  blobcol BLOB NOT NULL
);

@attribute(cql:identity=(intcol, longcol))
create proc non_empty_proc()
begin
  select * from bar;
end;
