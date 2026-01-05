.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDebugCertFilePath:Ljava/lang/String;

.field public final mIsSafeMode:Z

.field public mSerializedFontMap:Landroid/os/SharedMemory;

.field public final mSerializedFontMapLock:Ljava/lang/Object;

.field public mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

.field public final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    const-string v0, "FontManagerService"

    if-eqz p2, :cond_0

    const-string v1, "Entering safe mode. Deleting all font updates."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/fonts/config/config.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    const-string/jumbo p1, "Using optimized boot-time font loading."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;Ljava/util/concurrent/CompletableFuture;)V

    const-string p0, "FontManagerService_create"

    invoke-static {p1, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static closeFileDescriptors(Ljava/util/List;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FontManagerService"

    const-string v2, "Failed to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    aput-object p0, v1, v0

    move-object v0, v1

    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/files"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-direct {v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>([Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v4, "/data/fonts/config/config.xml"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/OtfFontFileParser;Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;Ljava/io/File;)V

    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string p3, "FontManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    new-instance p0, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p0, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    return-void
.end method

.method public final getFontConfig()Landroid/text/FontConfig;
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getFontConfig_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemFontConfig()Landroid/text/FontConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez p0, :cond_0

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initialize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "FontManagerService"

    const-string v3, "Failed to serialize SystemServer system font map"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Landroid/os/SharedMemory;->close()V

    :cond_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final update(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iget v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string/jumbo p1, "The base config version is older than current."

    const/4 p2, -0x8

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    monitor-exit v0

    return-void

    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string/jumbo p1, "The font updater is disabled."

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateFontFamily(Ljava/util/List;I)I
    .locals 3

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_FONTS"

    const-string/jumbo v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_1
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p2, "FontManagerService"

    const-string v0, "Failed to update font family"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return p0

    :goto_0
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    throw p0
.end method

.method public final updateSerializedFontMap()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    instance-of v4, v3, Ljava/nio/DirectByteBuffer;

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "FontManagerService"

    const-string v4, "Failed to serialize updatable font map. Retrying with system image fonts."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    instance-of v3, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    if-nez v0, :cond_4

    :try_start_2
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "FontManagerService"

    const-string v3, "Failed to serialize SystemServer system font map"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v0, v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    :cond_5
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    if-eqz v2, :cond_6

    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :cond_7
    throw p0
.end method
