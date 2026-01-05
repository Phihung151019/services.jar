.class public final synthetic Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/PersistentDataStore;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    iget-object v1, v0, Lcom/android/server/display/PersistentDataStore;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    iget-object v3, v3, Lcom/android/server/display/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v3, "DisplayManager.PersistentDataStore"

    const-string v4, "Failed to save display manager persistent store data."

    invoke-static {v3, v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    :try_start_3
    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    goto :goto_0

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;)V

    :cond_1
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
