.class public final Lcom/android/server/accessibility/ProxyManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$client:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$1;->this$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$1;->val$displayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    return-void
.end method
