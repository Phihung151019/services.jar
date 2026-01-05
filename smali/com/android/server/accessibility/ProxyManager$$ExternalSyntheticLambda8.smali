.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method
