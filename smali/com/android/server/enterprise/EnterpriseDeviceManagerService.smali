.class public abstract Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-object v0
.end method


# virtual methods
.method public abstract getOrganizationOwnedProfileUserId()I
.end method

.method public abstract startDeferredServicesIfNeeded()V
.end method
