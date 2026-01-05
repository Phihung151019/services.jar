.class public final synthetic Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/MacAddress;

.field public final synthetic f$4:Landroid/companion/AssociationRequest;

.field public final synthetic f$5:Landroid/companion/IAssociationRequestCallback;

.field public final synthetic f$6:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    iput p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/net/MacAddress;

    iput-object p5, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/companion/AssociationRequest;

    iput-object p6, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:Landroid/companion/IAssociationRequestCallback;

    iput-object p7, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    iget v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/net/MacAddress;

    iget-object v4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/companion/AssociationRequest;

    iget-object v8, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:Landroid/companion/IAssociationRequestCallback;

    iget-object v9, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v4

    invoke-virtual {p0}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/companion/AssociationRequest;->getAssociatedDevice()Landroid/companion/AssociatedDevice;

    move-result-object v6

    invoke-virtual {p0}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v7

    invoke-virtual {p0}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    return-void
.end method
