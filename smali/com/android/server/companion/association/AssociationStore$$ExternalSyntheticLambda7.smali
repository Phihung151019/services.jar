.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

    check-cast p1, Landroid/companion/AssociationInfo;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;->f$1:I

    check-cast p1, Landroid/companion/AssociationInfo;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
