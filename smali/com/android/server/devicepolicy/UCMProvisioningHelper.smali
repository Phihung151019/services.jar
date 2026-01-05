.class public final Lcom/android/server/devicepolicy/UCMProvisioningHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static ucmProfile:Landroid/os/Bundle;


# instance fields
.field public final connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->connection:Lcom/android/server/devicepolicy/UCMProvisioningHelper$3;

    iput-object p1, p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getUCMConfigParams(Landroid/os/PersistableBundle;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "ucm-config"

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    if-nez p0, :cond_1

    const-string/jumbo p0, "getUCMProfile received null"

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getUCMProfile received non-null: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo v1, "UCMProvisioningHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    const-string/jumbo v1, "ucm-config-client-package"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    const-string/jumbo v3, "ucm-config-client-signature"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    const-string/jumbo v5, "ucm-config-client-location"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isUCMConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "UCMProvisioningHelper"

    const-string/jumbo v2, "ucm-config"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "isUCMConfigured from provisioning params"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo p1, "persona"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMProfile()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-object p0, Lcom/android/server/devicepolicy/UCMProvisioningHelper;->ucmProfile:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "isUCMConfigured from preset params"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
