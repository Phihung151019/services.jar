.class public final synthetic Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    sget-object p0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    new-instance p0, Landroid/apex/CompressedApexInfo;

    invoke-direct {p0}, Landroid/apex/CompressedApexInfo;-><init>()V

    iget-object v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    iget-wide v0, p1, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    iput-wide v0, p0, Landroid/apex/CompressedApexInfo;->versionCode:J

    return-object p0
.end method
