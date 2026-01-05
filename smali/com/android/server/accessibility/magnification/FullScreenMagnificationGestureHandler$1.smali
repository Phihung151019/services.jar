.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    return-void
.end method


# virtual methods
.method public final onFullScreenMagnificationActivationState(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$1;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0

    return-void
.end method

.method public final onImeWindowVisibilityChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onRequestMagnificationSpec(I)V
    .locals 0

    return-void
.end method
