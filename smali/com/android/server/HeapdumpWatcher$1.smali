.class public final Lcom/android/server/HeapdumpWatcher$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HeapdumpWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/HeapdumpWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HeapdumpWatcher$1;->this$0:Lcom/android/server/HeapdumpWatcher;

    const-string/jumbo p1, "watchdogHeapDump"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string/jumbo v0, "Watchdog:HeapdumpWatcher"

    :try_start_0
    const-string v1, "/data/log/core"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " create folder /data/log/core"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/attribute/FileAttribute;

    const-string/jumbo v4, "rwxrwxrwx"

    invoke-static {v4}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :cond_0
    const-string/jumbo v1, "Start dumping for java heapdump"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/data/log/core/system_server.hprof"

    iget-object p0, p0, Lcom/android/server/HeapdumpWatcher$1;->this$0:Lcom/android/server/HeapdumpWatcher;

    iget-object p0, p0, Lcom/android/server/HeapdumpWatcher;->softdog:Lcom/android/server/WatchdogSoftdog;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "RuntimeException: Cannot dump for java heapdump"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "IOException: Cannot dump for java heapdump"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
