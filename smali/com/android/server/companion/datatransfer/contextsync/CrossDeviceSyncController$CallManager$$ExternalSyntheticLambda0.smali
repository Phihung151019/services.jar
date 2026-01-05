.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget-object p0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    return-object p0
.end method
