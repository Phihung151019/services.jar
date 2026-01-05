.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

.field public final synthetic f$2:Landroid/app/blob/BlobHandle;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$2:Landroid/app/blob/BlobHandle;

    iput-object p4, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$0:I

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$2:Landroid/app/blob/BlobHandle;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v0, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    const-string/jumbo v4, "string"

    invoke-virtual {v1, v0, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :goto_2
    iget-wide v0, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v0

    :cond_3
    move-wide v5, v0

    new-instance v3, Landroid/app/blob/LeaseInfo;

    iget-object v4, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    invoke-direct/range {v3 .. v8}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
