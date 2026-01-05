.class public final Lcom/android/server/companion/association/AssociationRequestsProcessor$1;
.super Landroid/os/ResultReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    if-eqz p1, :cond_0

    const-string/jumbo p0, "Unknown result code:"

    const-string p2, "CDM_AssociationRequestsProcessor"

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "association_request"

    const-class v0, Landroid/companion/AssociationRequest;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/companion/AssociationRequest;

    const-string/jumbo p1, "application_callback"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v6

    const-string/jumbo p1, "result_receiver"

    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/ResultReceiver;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "mac_address"

    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MacAddress;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->getUserId()I

    move-result v2

    iget-object p0, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    :try_start_0
    iget-object p1, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1, v5, p0}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {v6, p1, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
