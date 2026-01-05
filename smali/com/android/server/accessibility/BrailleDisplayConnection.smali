.class Lcom/android/server/accessibility/BrailleDisplayConnection;
.super Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sConnectedNodes:Ljava/util/Set;


# instance fields
.field public mController:Landroid/accessibilityservice/IBrailleDisplayController;

.field public mHidrawNode:Ljava/io/File;

.field public mInputThread:Ljava/lang/Thread;

.field public final mLock:Ljava/lang/Object;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mOutputThread:Landroid/os/HandlerThread;

.field public mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

.field public final mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeGetHidrawBusType(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawBusType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDesc(II)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDesc(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDescSize(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDescSize(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawUniq(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawUniq(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    new-instance p1, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-void
.end method

.method public static getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static isBrailleDisplay([B)Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_6

    aget-byte v3, p0, v1

    and-int/lit16 v4, v3, 0xf0

    const-string v5, "Item "

    const-string v6, "BrailleDisplayConnection"

    const/16 v7, 0xf0

    if-eq v4, v7, :cond_5

    and-int/lit8 v4, v3, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v8, :cond_0

    const/4 v9, 0x2

    if-eq v4, v9, :cond_2

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v0

    :cond_2
    :goto_1
    add-int v4, v1, v9

    array-length v10, p0

    if-lt v4, v10, :cond_3

    const-string p0, " specifies size past the remaining bytes"

    invoke-static {v3, v5, p0, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    if-ne v9, v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v3, v3, 0xfc

    int-to-byte v3, v3

    if-ne v3, v7, :cond_4

    const/16 v3, 0x41

    if-ne v1, v3, :cond_4

    move v2, v8

    :cond_4
    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p0, " declares unsupported long type"

    invoke-static {v3, v5, p0, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    return v2
.end method

.method private static native nativeGetHidrawBusType(I)I
.end method

.method private static native nativeGetHidrawDesc(II)[B
.end method

.method private static native nativeGetHidrawDescSize(I)I
.end method

.method private static native nativeGetHidrawName(I)Ljava/lang/String;
.end method

.method private static native nativeGetHidrawUniq(I)Ljava/lang/String;
.end method


# virtual methods
.method public final connectLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/String;

    const-string v1, "/dev"

    invoke-static {v1, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "BrailleDisplayConnection"

    if-nez v0, :cond_0

    const-string/jumbo p1, "Unable to access the HIDRAW node directory"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, p4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    iget-object v6, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v6, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceReportDescriptor(Ljava/nio/file/Path;)[B

    move-result-object v6

    if-nez v6, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, p4

    :goto_1
    invoke-static {v6}, Lcom/android/server/accessibility/BrailleDisplayConnection;->isBrailleDisplay([B)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v8, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceBusType(Ljava/nio/file/Path;)I

    move-result v8

    if-ne v8, p3, :cond_1

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, v2, :cond_7

    if-eqz v4, :cond_6

    const-string/jumbo p1, "Unable to access some HIDRAW node\'s descriptor"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "Unable to find a unique Braille display matching the provided device"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    :cond_7
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    sget-object p3, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    iget-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    check-cast p3, Landroid/util/ArraySet;

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    const-string/jumbo p1, "Unable to find an unused Braille display matching the provided device"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;)V

    const-string p4, "BrailleDisplayConnection input thread"

    invoke-direct {p2, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    invoke-virtual {p2, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iput-object p0, p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {p2, p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error calling onConnected"

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void
.end method

.method public final disconnect()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BrailleDisplayConnection"

    const-string/jumbo v4, "Unable to close output stream"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iput-object v1, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {v1}, Landroid/accessibilityservice/IBrailleDisplayController;->onDisconnected()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    :try_start_4
    const-string v1, "BrailleDisplayConnection"

    const-string v2, "Error calling onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v1, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final sendConnectionErrorLocked(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnectionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BrailleDisplayConnection"

    const-string v0, "Error calling onConnectionFailed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setTestData(Ljava/util/List;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "HIDRAW_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final write([B)V
    .locals 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "BrailleDisplayConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requested write of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is larger than maximum "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mClientBinder:Landroid/os/IBinder;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "BrailleDisplayConnection output thread"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setDaemon(Z)V

    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "BrailleDisplayConnection"

    const-string/jumbo v2, "Unable to create write stream"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Accessibility service is not connected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
