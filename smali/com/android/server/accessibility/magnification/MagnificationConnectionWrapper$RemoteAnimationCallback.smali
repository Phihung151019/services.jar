.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;
.super Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v0, 0x40

    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callback="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "RemoteAnimationCallback.constructor"

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-interface {v0, p1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "success="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "RemoteAnimationCallback.onResult"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
