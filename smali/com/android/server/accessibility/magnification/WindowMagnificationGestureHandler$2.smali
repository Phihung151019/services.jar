.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    return-void
.end method


# virtual methods
.method public final onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v0, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mFoldState:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iput v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mFoldState:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget p1, p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v0, p1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mFoldState:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mFoldState:I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$2;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    :cond_4
    return-void
.end method
