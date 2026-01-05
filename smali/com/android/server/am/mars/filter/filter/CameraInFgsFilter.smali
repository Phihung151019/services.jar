.class public final Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraUsingList:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    new-instance v0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 2

    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraUsingList:Ljava/util/Set;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter;->mCameraDeviceStateCallback:Lcom/android/server/am/mars/filter/filter/CameraInFgsFilter$1;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    return-void
.end method
