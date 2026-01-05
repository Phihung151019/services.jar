.class public final Lcom/android/server/chimera/psitracker/PSITrackerCollector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static availableMemSaveCount:I

.field public static availableMemUpdateFlag:Z


# instance fields
.field public final mAvailableMemRecords:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    return-void
.end method

.method public static saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V
    .locals 8

    const-string/jumbo v0, "update one PSIAvailableMemRecord successfully!, num="

    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p0, "PSITrackerCollector"

    const-string/jumbo v0, "save PSIEntryAppRecord failed! db is closed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    sget v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    const/16 v4, 0x2f80

    rem-int/2addr v2, v4

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v5, "select count(*) from psi_Available_Mem"

    invoke-virtual {v1, v5}, Lcom/android/server/chimera/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v5

    move v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-lt v6, v4, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    :cond_3
    sget-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    if-nez v2, :cond_4

    sget v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    add-int/2addr v2, v3

    sput v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    :cond_4
    sget-object v2, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    sget-boolean v3, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    const/4 v4, 0x0

    if-nez v3, :cond_7

    iget-object v0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    :try_start_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "availMem"

    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "cached"

    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "running"

    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "checkTime"

    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p0, "psi_Available_Mem"

    iget-object v3, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object p0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_6
    const-string/jumbo p0, "PSITrackerCollector"

    const-string/jumbo v0, "save one PSIAvailableMemRecord successfully!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_6

    :catchall_2
    move-exception p0

    goto/16 :goto_8

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :try_start_8
    const-string/jumbo v0, "PSITrackerCollector"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :goto_4
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    throw p0

    :cond_7
    iget-object v3, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_8
    :try_start_a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "availMem"

    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "cached"

    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "running"

    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "checkTime"

    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p0, "psi_Available_Mem"

    const-string/jumbo v5, "checkTime=(select min(checkTime) from psi_Available_Mem)"

    iget-object v6, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v3, p0

    iget-object p0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_9
    const-string/jumbo p0, "PSITrackerCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_5
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception p0

    :try_start_c
    const-string/jumbo v0, "PSITrackerCollector"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_5

    :goto_6
    :try_start_d
    monitor-exit v2

    return-void

    :goto_7
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    throw p0

    :goto_8
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw p0
.end method
