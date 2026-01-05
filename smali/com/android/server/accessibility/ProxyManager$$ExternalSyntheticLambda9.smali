.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$0:I

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    :cond_0
    return-void
.end method
