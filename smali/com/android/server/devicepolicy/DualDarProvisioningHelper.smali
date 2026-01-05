.class public final Lcom/android/server/devicepolicy/DualDarProvisioningHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "DualDarProvisioningHelper"

    if-eqz p1, :cond_0

    const-string/jumbo v2, "dualdar-config"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "isDualDARConfigured from provisioning params"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo p1, "persona"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string/jumbo p0, "isDualDARConfigured from preset params"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
