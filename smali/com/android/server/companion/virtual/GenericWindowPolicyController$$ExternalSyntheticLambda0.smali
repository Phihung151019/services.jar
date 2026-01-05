.class public final synthetic Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;->f$3:I

    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-interface {v0, v1, v2, p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to call mActivityListener for display: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualDeviceImpl"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
