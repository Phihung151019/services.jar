.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->$r8$classId:I

    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->$r8$classId:I

    iget p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata$Accessor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    iget v0, v0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_0
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_1
    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
