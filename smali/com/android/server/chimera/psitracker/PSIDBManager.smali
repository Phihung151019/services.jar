.class public final Lcom/android/server/chimera/psitracker/PSIDBManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field public static volatile mContext:Ljava/lang/ref/WeakReference;

.field public static mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;


# instance fields
.field public final mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;

    const-string/jumbo v2, "PSITracker.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string/jumbo v2, "create table if not exists psi_Available_Mem(id integer primary key autoincrement,availMem integer, cached integer, running integer,checkTime integer)"

    iput-object v2, v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;->CREATE_AVAIL_MEM_TABLE:Ljava/lang/String;

    const-string v2, "ALTER TABLE psi_Available_Mem ADD COLUMN running integer"

    iput-object v2, v1, Lcom/android/server/chimera/psitracker/PSIDBHelper;->DATABASE_UPDATE_TEAM_1:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/psitracker/PSIDBManager;

    invoke-direct {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;-><init>()V

    sput-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mInstance:Lcom/android/server/chimera/psitracker/PSIDBManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final endTransaction()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method public final isDBClosed()Z
    .locals 2

    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    xor-int/2addr p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final rawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
