.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onClientStarted$com$android$server$biometrics$sensors$face$aidl$FaceEnrollClient$1(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    return-void
.end method

.method private final onClientStarted$com$android$server$biometrics$sensors$face$aidl$FaceEnrollClient$2(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 4

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    const-string p2, "FaceEnrollClient"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    if-nez p1, :cond_0

    const-string/jumbo p1, "mHwPreviewHandle is null even though mPreviewSurface is not null."

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string p1, "Closing mHwPreviewHandle"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to close mPreviewSurface"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    :cond_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    if-eqz p1, :cond_4

    const-string/jumbo p1, "Releasing mOsPreviewHandle"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceService;->releaseSurfaceHandle(Landroid/os/NativeHandle;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    :cond_4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    if-eqz p1, :cond_5

    const-string/jumbo p1, "Releasing mPreviewSurface"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->$r8$classId:I

    return-void
.end method
