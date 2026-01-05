.class public final Lcom/android/server/am/AppProfiler$RecordPssRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDumpUri:Landroid/net/Uri;

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessProfileRecord;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    iput-object p2, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iput-object p3, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    const-string/jumbo v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mDumpUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/IApplicationThread$Delegator;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_1
    if-eqz v9, :cond_1

    :try_start_4
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    const-string v1, "ActivityManager"

    const-string v2, "Failed to dump heap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$RecordPssRunnable;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_4
    return-void
.end method
