.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;->f$1:J

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda44;->f$1:J

    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, v1, v2}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    :cond_0
    return-void
.end method
