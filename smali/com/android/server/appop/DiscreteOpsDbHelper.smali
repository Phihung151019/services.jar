.class public final Lcom/android/server/appop/DiscreteOpsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static getDatabaseFile()Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "app_op_history.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final insertDiscreteOps(Ljava/util/List;)V
    .locals 9

    const-string v0, "Couldn\'t commit transaction when inserting discrete ops, database file size (bytes) : "

    const-string v1, "DiscreteOpsDbHelper"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, access_time, access_duration, uid_state, op_flags, attribution_flags, chain_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x2

    if-nez v6, :cond_1

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    const/4 v7, 0x3

    if-nez v6, :cond_2

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    :goto_2
    iget v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    const/4 v7, 0x4

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    const/4 v7, 0x5

    if-nez v6, :cond_3

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    :goto_3
    iget-wide v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    const/4 v8, 0x6

    invoke-virtual {v2, v8, v6, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    iget-wide v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    const/4 v8, 0x7

    invoke-virtual {v2, v8, v6, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    iget v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    const/16 v7, 0x8

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    iget v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    const/16 v7, 0x9

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    iget v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    const/16 v7, 0xa

    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    iget-wide v6, v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    const/16 v8, 0xb

    invoke-virtual {v2, v8, v6, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v6

    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error inserting the discrete op: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_a

    :cond_5
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void

    :goto_8
    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v2

    :try_start_9
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    :try_start_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_b

    :catch_2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    throw p1
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string/jumbo p0, "PRAGMA synchronous = NORMAL"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT NOT NULL,op_code INTEGER,attribution_tag TEXT,access_time INTEGER,access_duration INTEGER,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time, uid, op_code)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
