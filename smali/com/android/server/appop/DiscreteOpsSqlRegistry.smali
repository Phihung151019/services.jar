.class public final Lcom/android/server/appop/DiscreteOpsSqlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DB_WRITE_INTERVAL:J

.field public static final EXPIRED_ENTRY_DELETION_INTERVAL:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDatabaseFile:Ljava/io/File;

.field public final mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

.field public final mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

.field public final mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpCache:Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;

    const-string v1, "DiscreteOpsSqlRegistry"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v1

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDatabaseFile:Ljava/io/File;

    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;-><init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mSqliteWriteHandler:Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    new-instance v4, Lcom/android/server/appop/DiscreteOpsDbHelper;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;

    invoke-direct {v9}, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    new-instance p1, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    iput-object v4, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->mDiscreteOpsDbHelper:Lcom/android/server/appop/DiscreteOpsDbHelper;

    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo p1, "SELECT MAX(chain_id) FROM app_op_accesses"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    const-string p1, "DiscreteOpsDbHelper"

    const-string v0, "Error reading attribution chain id"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    sget-wide p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->DB_WRITE_INTERVAL:J

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x2

    sget-wide v0, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->EXPIRED_ENTRY_DELETION_INTERVAL:J

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
