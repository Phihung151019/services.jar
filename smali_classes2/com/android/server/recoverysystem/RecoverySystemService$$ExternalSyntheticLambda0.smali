.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    sget-object p0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    iget-boolean p0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    return p0
.end method
