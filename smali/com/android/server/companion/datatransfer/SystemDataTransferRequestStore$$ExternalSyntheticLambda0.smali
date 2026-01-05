.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;->f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;->f$0:Landroid/companion/datatransfer/SystemDataTransferRequest;

    check-cast p1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
