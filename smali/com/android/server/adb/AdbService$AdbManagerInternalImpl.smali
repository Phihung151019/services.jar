.class public final Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdbKeysFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public final getAdbTempKeysFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public final isAdbEnabled(B)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "isAdbEnabled called with unimplemented transport type="

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyKeyFilesUpdated()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final registerTransport(Landroid/debug/IAdbTransport;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startAdbdForTransport(B)V
    .locals 3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopAdbdForTransport(B)V
    .locals 3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unregisterTransport(Landroid/debug/IAdbTransport;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
