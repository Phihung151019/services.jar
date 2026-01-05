.class public final Lcom/android/server/MdfService;
.super Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "initCCMode res = "

    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    const-string/jumbo p0, "MdfService"

    if-nez p1, :cond_0

    const-string/jumbo p1, "mdfService is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "ro.security.mdf.ux"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw p0

    :cond_2
    const-string/jumbo p1, "This device does not support the MDF"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final initCCMode()I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw p0
.end method
