.class public final synthetic Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iput p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-interface {v0, p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to call mActivityListener for display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "VirtualDeviceImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-interface {v0, p0}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onSecureWindowHidden(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to call mActivityListener for display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "VirtualDeviceImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
