.class public final Lcom/android/server/asks/PolicyConvert;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public TAG:Ljava/lang/String;

.field public pkgInfos:Ljava/util/Map;


# direct methods
.method public static MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const-string v3, "DELETE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "        <delete version=\"00000000\" datelimit=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v3, "        <restrict version=\"00000000\" type=\""

    const-string v4, "\" datelimit=\""

    const-string v5, "\" from=\"Token\"/>"

    invoke-static {v3, p1, v4, p2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    const-string p1, "\"/>"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final convert(Ljava/lang/String;)Z
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "/data/system/.aasa/RestrictPackages.xml"

    const-string v3, "/data/system/.aasa/EMSupportPackages.xml"

    const-string v4, "\"/>"

    const-string v5, "/data/system/.aasa/AASApackages.xml"

    const-string v6, "\""

    const-string v7, ""

    iget-object v8, v1, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "working.."

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<PM>"

    const-string v9, "<PKG>"

    const-string v10, "<AASA VERSION=\""

    const-string v11, "0"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_9

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v7

    const/16 v17, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v19, :cond_1

    move-object/from16 v19, v11

    :try_start_3
    invoke-static {v14, v10}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v10

    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v21, v13

    const/4 v13, -0x1

    if-ne v10, v13, :cond_0

    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_11

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    :cond_0
    const/4 v13, 0x0

    :try_start_6
    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v11, v10

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_2
    move-object v1, v0

    goto/16 :goto_39

    :catch_2
    move-exception v0

    move-object/from16 v11, v19

    :goto_3
    move-object/from16 v13, v21

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v21, v13

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v21, v13

    move-object/from16 v11, v19

    goto/16 :goto_b

    :cond_1
    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object/from16 v21, v13

    :goto_4
    :try_start_7
    const-string v10, "<BlockBySPD>"

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v17, 0x1

    goto :goto_5

    :cond_2
    const-string v10, "</BlockBySPD>"

    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v13, v21

    goto/16 :goto_9

    :cond_3
    :goto_5
    if-eqz v17, :cond_7

    invoke-virtual {v14, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v13, "<"

    if-eqz v10, :cond_4

    :try_start_8
    invoke-static {v14, v9}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v9

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    :try_start_9
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_3

    :cond_4
    move-object/from16 v22, v9

    move-object/from16 v19, v11

    move-object/from16 v9, v18

    :goto_6
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v14, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    :goto_7
    move-object/from16 v18, v9

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move-object/from16 v13, v21

    move-object/from16 v9, v22

    goto/16 :goto_0

    :cond_7
    move-object/from16 v19, v11

    move-object/from16 v10, v20

    move-object/from16 v13, v21

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v21, v13

    goto :goto_b

    :cond_8
    move-object/from16 v19, v11

    move-object/from16 v21, v13

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v21, v13

    move-object v1, v0

    const/4 v15, 0x0

    goto/16 :goto_39

    :catch_6
    move-exception v0

    move-object/from16 v21, v13

    :goto_8
    const/4 v15, 0x0

    const/16 v17, 0x0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    const/16 v21, 0x0

    goto/16 :goto_39

    :catch_7
    move-exception v0

    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_9
    if-eqz v15, :cond_a

    :try_start_a
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    if-eqz v13, :cond_c

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :goto_b
    :try_start_c
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    if-eqz v15, :cond_b

    :try_start_d
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_c

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_c
    if-eqz v13, :cond_c

    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_c
    :goto_d
    if-eqz v17, :cond_f

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    goto :goto_f

    :cond_d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const-string v0, "        <restrict version=\""

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" type=\"REVOKE\" datelimit=\"00000000\" from=\"Token\">"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_e

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v11

    const-string v11, "            <permission value=\""

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v18

    goto :goto_10

    :cond_e
    move-object/from16 v18, v11

    const-string v0, "        </restrict>"

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v11, v18

    goto :goto_e

    :cond_f
    :goto_11
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :try_start_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_15

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object v0, v7

    move-object v12, v0

    const/4 v13, 0x0

    :cond_10
    :goto_12
    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_16

    const-string v15, "<package value="

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v0, "<package value=\""

    invoke-static {v14, v0}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_11

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    goto/16 :goto_36

    :catch_b
    move-exception v0

    goto :goto_18

    :cond_11
    :goto_13
    const/4 v13, 0x0

    goto :goto_16

    :cond_12
    const-string v15, "<mode value"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    const-string v12, "<mode value=\""

    invoke-static {v14, v12}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :cond_13
    const-string v15, "</package>"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_14

    invoke-virtual {v9, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/4 v13, 0x1

    :cond_14
    move-object v0, v7

    move-object v12, v0

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_14
    const/4 v15, 0x0

    goto/16 :goto_36

    :catch_c
    move-exception v0

    :goto_15
    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    goto :goto_14

    :catch_d
    move-exception v0

    const/4 v10, 0x0

    goto :goto_15

    :cond_15
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_13

    :cond_16
    :goto_16
    if-eqz v11, :cond_17

    :try_start_12
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_17

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_17
    if-eqz v10, :cond_19

    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_1a

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    :goto_18
    :try_start_14
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v11, :cond_18

    :try_start_15
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_19
    if-eqz v10, :cond_19

    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    :cond_19
    :goto_1a
    if-eqz v13, :cond_1b

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    goto :goto_1c

    :cond_1a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_1c
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "        <emmode value=\""

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_1b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :try_start_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_28

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_15
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object v0, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1d
    const/4 v14, 0x0

    :goto_1e
    :try_start_19
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v15, :cond_27

    move-object/from16 v17, v10

    :try_start_1a
    const-string v10, "<DATELIMIT value="

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v10, "<DATELIMIT value=\""

    invoke-static {v15, v10}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v6

    const/4 v6, -0x1

    if-eq v15, v6, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-nez v0, :cond_1d

    const/4 v6, 0x0

    :try_start_1b
    invoke-virtual {v10, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    :goto_1f
    move-object/from16 v10, v17

    move-object/from16 v6, v18

    goto :goto_1e

    :catchall_7
    move-exception v0

    :goto_20
    move-object v1, v0

    :goto_21
    move-object v15, v11

    goto/16 :goto_33

    :catch_11
    move-exception v0

    :goto_22
    move-object/from16 v10, v17

    goto/16 :goto_27

    :cond_1d
    const/4 v6, 0x0

    goto :goto_23

    :catch_12
    move-exception v0

    const/4 v6, 0x0

    goto :goto_22

    :goto_23
    move v13, v6

    move-object/from16 v10, v17

    goto/16 :goto_25

    :cond_1e
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const-string v10, "<DELETE>"

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    :cond_1f
    const-string v10, "<DENY>"

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_20

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    :cond_20
    const-string v10, "<PKG value="

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_22

    const-string v10, "<PKG value=\""

    invoke-static {v15, v10}, Lcom/android/server/asks/PolicyConvert;->parseToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_21

    if-nez v14, :cond_21

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz v14, :cond_1c

    if-nez v12, :cond_1c

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_22
    const-string v10, "</DELETE>"

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_23

    if-eqz v12, :cond_23

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_23

    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move-object/from16 v10, v17

    move-object/from16 v6, v18

    const/4 v12, 0x0

    goto/16 :goto_1e

    :cond_24
    const-string v10, "</DENY>"

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_25

    if-eqz v14, :cond_25

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_25

    invoke-virtual {v9, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    move-object/from16 v10, v17

    move-object/from16 v6, v18

    goto/16 :goto_1d

    :cond_26
    const-string v10, "</DATELIMIT>"

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    if-eqz v10, :cond_1c

    move-object v0, v7

    move-object/from16 v10, v17

    move-object/from16 v6, v18

    const/4 v13, 0x1

    goto/16 :goto_1e

    :cond_27
    move-object/from16 v17, v10

    const/4 v6, 0x0

    goto :goto_25

    :catchall_8
    move-exception v0

    move-object/from16 v17, v10

    goto/16 :goto_20

    :catch_13
    move-exception v0

    move-object/from16 v17, v10

    const/4 v6, 0x0

    goto :goto_27

    :catchall_9
    move-exception v0

    move-object/from16 v17, v10

    move-object v1, v0

    const/4 v15, 0x0

    goto/16 :goto_33

    :catch_14
    move-exception v0

    move-object/from16 v17, v10

    const/4 v6, 0x0

    move v13, v6

    :goto_24
    const/4 v11, 0x0

    goto :goto_27

    :catchall_a
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto/16 :goto_33

    :catch_15
    move-exception v0

    const/4 v6, 0x0

    move v13, v6

    const/4 v10, 0x0

    goto :goto_24

    :cond_28
    const/4 v6, 0x0

    move v13, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_25
    if-eqz v11, :cond_29

    :try_start_1c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16

    goto :goto_26

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_29
    :goto_26
    if-eqz v10, :cond_2b

    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_17

    goto :goto_29

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    :goto_27
    :try_start_1e
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    if-eqz v11, :cond_2a

    :try_start_1f
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    goto :goto_28

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2a
    :goto_28
    if-eqz v10, :cond_2b

    :try_start_20
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_17

    :cond_2b
    :goto_29
    if-eqz v13, :cond_2d

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    iget-object v12, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v13, "DELETE"

    invoke-static {v11, v13, v10, v12}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2a

    :cond_2c
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v12, "DENY"

    invoke-static {v10, v12, v4, v11}, Lcom/android/server/asks/PolicyConvert;->MakeString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2b

    :cond_2d
    iget-object v0, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    const-string v4, "\">\n"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move v13, v6

    :goto_2c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_2e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_2c

    :cond_2f
    new-instance v7, Ljava/io/File;

    const-string v9, "/data/system/.aasa/asks.xml"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_21
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_32

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1a
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    :try_start_22
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<asks version=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    <package name=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move v13, v6

    :goto_2e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v13, v10, :cond_30

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    :catchall_b
    move-exception v0

    move-object v15, v7

    goto/16 :goto_32

    :catch_19
    move-exception v0

    move-object v15, v7

    goto :goto_30

    :cond_30
    const-string v9, "    </package>\n"

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2d

    :cond_31
    const-string v0, "</asks>\n"

    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_19
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    move-object v15, v7

    const/4 v13, 0x1

    goto :goto_2f

    :catchall_c
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_32

    :catch_1a
    move-exception v0

    const/4 v15, 0x0

    goto :goto_30

    :cond_32
    move v13, v6

    const/4 v15, 0x0

    :goto_2f
    if-eqz v15, :cond_34

    :try_start_23
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1c

    goto :goto_31

    :goto_30
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR::"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    if-eqz v15, :cond_33

    :try_start_25
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1b

    :catch_1b
    :cond_33
    move v13, v6

    :catch_1c
    :cond_34
    :goto_31
    if-eqz v13, :cond_39

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/AASA.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_35
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/AASA-TEMP.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_39
    const-string/jumbo v0, "end"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :catchall_d
    move-exception v0

    :goto_32
    if-eqz v15, :cond_3a

    :try_start_26
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1d

    :catch_1d
    :cond_3a
    throw v0

    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v10

    goto/16 :goto_21

    :goto_33
    if-eqz v15, :cond_3b

    :try_start_27
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1e

    goto :goto_34

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3b
    :goto_34
    if-eqz v17, :cond_3c

    :try_start_28
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1f

    goto :goto_35

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3c
    :goto_35
    throw v1

    :goto_36
    if-eqz v15, :cond_3d

    :try_start_29
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_20

    goto :goto_37

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3d
    :goto_37
    if-eqz v10, :cond_3e

    :try_start_2a
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_21

    goto :goto_38

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    :goto_38
    throw v1

    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v21, v13

    :goto_39
    if-eqz v15, :cond_3f

    :try_start_2b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_22

    goto :goto_3a

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3f
    :goto_3a
    if-eqz v21, :cond_40

    :try_start_2c
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_23

    goto :goto_3b

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_40
    :goto_3b
    throw v1
.end method
