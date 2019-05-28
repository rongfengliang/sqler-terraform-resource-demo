CREATE TABLE apps (
    id SERIAL PRIMARY KEY,
    appname text,
    appversion text,
    content text
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username text,
    age integer,
    content text
);


INSERT INTO "public"."apps"("appname", "appversion", "content") VALUES('login', 'v1.0', 'login') RETURNING "id", "appname", "appversion", "content";
INSERT INTO "public"."apps"("appname", "appversion") VALUES('logo', 'v2.0') RETURNING "id", "appname", "appversion", "content";

INSERT INTO "public"."users"("username", "age", "content") VALUES('dalong', 22, 'demo') RETURNING "id", "username", "age", "content";
INSERT INTO "public"."users"("username", "age") VALUES('rong', 29) RETURNING "id", "username", "age", "content";
