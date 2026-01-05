.class public final synthetic Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/BinaryTransparencyService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/BinaryTransparencyService;

    sget-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "/sys/fs/selinux/policy"

    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sepolicy hash: "

    const-string/jumbo v2, "TransparencyService"

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x307

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
