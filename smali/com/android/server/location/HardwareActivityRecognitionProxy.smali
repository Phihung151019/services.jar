.class public final Lcom/android/server/location/HardwareActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field public final mIsSupported:Z

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mIsSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    :goto_0
    const-string/jumbo v0, "com.android.location.service.ActivityRecognitionProvider"

    const v1, 0x111016d

    const v2, 0x10402f4

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    const-string v1, "HardwareActivityRecognitionProxy"

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 1

    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p2

    const-class v0, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V

    :cond_0
    return-void

    :cond_1
    const-class v0, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mIsSupported:Z

    iget-object p0, p0, Lcom/android/server/location/HardwareActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {p1, p2, p0}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V

    return-void

    :cond_2
    const-string/jumbo p0, "Unknown descriptor: "

    const-string p1, "ARProxy"

    invoke-static {p0, p2, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onUnbind()V
    .locals 0

    return-void
.end method
