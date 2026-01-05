.class public final Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

.field public final synthetic val$associatedDisplayId:I

.field public final synthetic val$deviceName:Ljava/lang/String;

.field public final synthetic val$productId:I

.field public final synthetic val$vendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    iput p4, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    iput p5, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->onInputDeviceChanged(I)V

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 4

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const-string/jumbo v1, "Newly added input device was null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    iget v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v0

    iget v1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    iput p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    return-void
.end method
