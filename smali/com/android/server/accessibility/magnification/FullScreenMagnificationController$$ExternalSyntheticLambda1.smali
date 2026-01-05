.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final synthetic f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V

    return-object v0
.end method
