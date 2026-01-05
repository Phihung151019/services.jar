.class public final Lcom/android/server/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/CertBlocklister$BlocklistObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    const-string p1, "BlocklistUpdater"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    sget-object v3, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CertBlocklister"

    const-string/jumbo v3, "The certificate blocklist based on serials is deprecated. Please use the pubkey blocklist instead."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "CertBlocklister"

    const-string v3, "Certificate blocklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string p0, "CertBlocklister"

    const-string v1, "Certificate blocklist updated"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_4
    const-string v1, "CertBlocklister"

    const-string v3, "Failed to write blocklist"

    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
