.class public final synthetic Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveMoveKey:I

    iput v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mActiveScrollKey:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mLastTimeKeyActionPerformed:J

    iget-object p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mDeviceKeyCodeMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;

    invoke-direct {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;-><init>()V

    const-string/jumbo v2, "Mouse Keys Virtual Device"

    invoke-virtual {v1, v2}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams$Builder;->build()Landroid/companion/virtual/VirtualDeviceParams;

    move-result-object v6

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "params must not be null"

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "virtual device name must not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    sget v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->$r8$clinit:I

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v1

    new-instance v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V

    iput-object v2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualDevice:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    new-instance v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    const-string/jumbo v1, "Mouse Keys Virtual Mouse"

    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-virtual {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor;->mVirtualMouse:Landroid/hardware/input/VirtualMouse;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
