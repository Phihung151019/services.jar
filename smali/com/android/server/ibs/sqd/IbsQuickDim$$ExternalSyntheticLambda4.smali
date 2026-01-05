.class public final synthetic Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-object p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string/jumbo v1, "PackageName = ?"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimPkgSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
