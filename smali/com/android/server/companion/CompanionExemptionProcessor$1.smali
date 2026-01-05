.class public final Lcom/android/server/companion/CompanionExemptionProcessor$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionExemptionProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    return-void
.end method


# virtual methods
.method public final onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 2

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAtm(ILjava/util/List;)V

    return-void
.end method
